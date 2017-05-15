using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
    }
}