using DoAn_ShopGiay.Models;
using MoMo;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn_ShopGiay.Controllers;
using System.Data.SqlClient;

namespace DoAn_ShopGiay.Controllers
{
    public class MoMoController : Controller
    {
        // GET: Default
        dbQLBanGiayDataContext data = new dbQLBanGiayDataContext();

        public dbQLBanGiayDataContext Data { get => data; set => data = value; }

        public ActionResult Index()
        {
            
            return View();
        }
     
        public ActionResult Payment()
        {

            List<Giohang> lstGiohang = Session["Giohang"] as List<Giohang>;
    
            string endpoint = "https://test-payment.momo.vn/gw_payment/transactionProcessor";
            string partnerCode = "MOMOOJOI20210710";
            string accessKey = "iPXneGmrJH0G8FOP";
            string serectkey = "sFcbSGRSJjwGxwhhcEktCHWYUuTuPNDB";
            string orderInfo = "GIAY";
            string returnUrl = "https://localhost:44379";
            string notifyurl = "https://4c8d-2001-ee0-5045-50-58c1-b2ec-3123-740d.ap.ngrok.io/Home/SavePayment";
            GiohangController a = new GiohangController();

            //   var tien = from d in Data.DONDATHANGs where d.MaDonHang == 1 select d.Tongtien;
            string amount = "17800000";//a.TongTien.Sum(n => n.dDongia).ToString();
            string orderid = Guid.NewGuid().ToString(); //mã đơn hàng
            string requestId = Guid.NewGuid().ToString();
            string extraData = "";

            /*string endpoint = ConfigurationManager.AppSettings["endpoint"].ToString();
             string partnerCode = ConfigurationManager.AppSettings["partnerCode"].ToString();
             string accessKey = ConfigurationManager.AppSettings["accesskey"].ToString();
             string serectkey = ConfigurationManager.AppSettings["serectkey"].ToString();
             string orderInfo = "DH" + DateTime.Now.ToString("yyyyMMddHHmmss");
             string returnUrl = ConfigurationManager.AppSettings["returnUrl"].ToString();
             string notifyurl = ConfigurationManager.AppSettings["notifyurl"].ToString();

             string amount = lstGiohang.Sum(n => n.dDongia).ToString();
             string orderid = Guid.NewGuid().ToString(); //mã đơn hàng
             string requestId = Guid.NewGuid().ToString();
             string extraData = "";*/

            //Before sign HMAC SHA256 signature
            string rawHash = "partnerCode=" +
                    partnerCode + "&accessKey=" +
                    accessKey + "&requestId=" +
                    requestId + "&amount=" +
                    amount + "&orderId=" +
                    orderid + "&orderInfo=" +
                    orderInfo + "&returnUrl=" +
                    returnUrl + "&notifyUrl=" +
                    notifyurl + "&extraData=" +
                    extraData;

            MoMoSecurity crypto = new MoMoSecurity();
            //sign signature SHA256
            string signature = crypto.signSHA256(rawHash, serectkey);

            //build body json request
            JObject message = new JObject
            {
                { "partnerCode", partnerCode },
                { "accessKey", accessKey },
                { "requestId", requestId },
                { "amount", amount },
                { "orderId", orderid },
                { "orderInfo", orderInfo },
                { "returnUrl", returnUrl },
                { "notifyUrl", notifyurl },
                { "extraData", extraData },
                { "requestType", "captureMoMoWallet" },
                { "signature", signature }

            };

            string responseFromMomo = PaymentRequest.sendPaymentRequest(endpoint, message.ToString());

            JObject jmessage = JObject.Parse(responseFromMomo);

            return Redirect(jmessage.GetValue("payUrl").ToString());
        }



        public ActionResult ConfirmPaymentClient(Result result)
        {
            //lấy kết quả Momo trả về và hiển thị thông báo cho người dùng (có thể lấy dữ liệu ở đây cập nhật xuống db)
            string rMessage = result.message;
            string rOrderId = result.orderId;
            string rErrorCode = result.errorCode; // = 0: thanh toán thành công
            return View();
        }
        [HttpPost]
        public void SavePayment()
        {
            //cập nhật dữ liệu vào db
            String a = "";
        }
    }
}