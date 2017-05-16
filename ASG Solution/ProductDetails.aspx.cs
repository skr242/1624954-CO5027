using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace ASG_Solution
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string entryIdString = Request.QueryString["Id"];
            int entryId = int.Parse(entryIdString);
            
            DatabaseEntities db = new DatabaseEntities();

            var entry = db.tblProducts.Single(p => p.ID == entryId);

            litTitle.Text = entry.Title;
            litUnitPrice.Text = entry.UnitPrice;
            litDescription.Text = entry.Description;
            litQuantity.Text = entry.Quantity.ToString();

            string imageId = Request.QueryString["Id"];
            var imageData = db.tblImages.Single(p => p.ImageName == imageId);
            var imageData1 = db.tblImage1.Single(p => p.ImageName == imageId);
            string filename = imageId + imageData.Extension;
            string filename1 = "a" + imageId + imageData1.Extension;

            CurrentImage.AlternateText = imageData.AlternateText;
            CurrentImage.Width = (Unit)imageData.Width;
            CurrentImage.Height = (Unit)imageData.Height;
            CurrentImage.ImageUrl = "~/img/product/" + filename;

            CurrentImage1.AlternateText = imageData1.AlternateText;
            CurrentImage1.Width = (Unit)imageData1.Width;
            CurrentImage1.Height = (Unit)imageData1.Height;
            CurrentImage1.ImageUrl = "~/img/product/" + filename1;
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            string entryIdString = Request.QueryString["Id"];
            int entryId = int.Parse(entryIdString);

            DatabaseEntities db = new DatabaseEntities();

            var entry = db.tblProducts.Single(p => p.ID == entryId);

            string title = entry.Title;
            decimal postagePackingCost = 4.05m;
            decimal price = decimal.Parse(entry.UnitPrice);
            int quantity = int.Parse(DropDownList1.SelectedValue);
            decimal subtotal = (quantity * price);
            decimal total = (subtotal + postagePackingCost);

            var config = ConfigManager.Instance.GetProperties();
            var accessToken = new OAuthTokenCredential(config).GetAccessToken();
            var apiContext = new APIContext(accessToken);

            var productItem = new Item();
            productItem.name = title;
            productItem.price = price.ToString();
            productItem.quantity = quantity.ToString();
            productItem.currency = "GBP";
            productItem.sku = entryIdString;

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackingCost.ToString();
            transactionDetails.subtotal = subtotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "GBP";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;

            var transaction = new Transaction();
            transaction.description = "Your order of Sunglasses";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://1624954.studentwebserver.co.uk/CO5027/Cancel.aspx";
            redirectUrls.return_url = "http://1624954.studentwebserver.co.uk/CO5027/CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            }
                );

            Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if(link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }

        }
    }
}