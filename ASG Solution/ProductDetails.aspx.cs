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

            string productId = Request.QueryString["Id"];
            int imageId = int.Parse(productId);
            var imageData = db.tblImages.Single(p => p.ID == imageId);
            string filename = productId + imageData.Extension;

            CurrentImage.AlternateText = imageData.AlternateText;
            CurrentImage.Width = (Unit)imageData.Width;
            CurrentImage.Height = (Unit)imageData.Height;
            CurrentImage.ImageUrl = "~/img/product/" + filename;
        }
    }
}