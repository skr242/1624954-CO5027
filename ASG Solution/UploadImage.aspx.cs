using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASG_Solution
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string filename = productId + ".jpg";
            string filename1 = productId + ".jpeg";
            string filename2 = productId + ".png";
            string filename3 = productId + ".gif";

            CurrentImage.ImageUrl = "~/img/product/" + filename;
            CurrentImage1.ImageUrl = "~/img/product/" + filename1;
            CurrentImage2.ImageUrl = "~/img/product/" + filename2;
            CurrentImage3.ImageUrl = "~/img/product/" + filename3;

            string filename4 = productId + ".jpg";
            string filename5 = productId + ".jpeg";
            string filename6 = productId + ".png";
            string filename7 = productId + ".gif";

            CurrentImage4.ImageUrl = "~/img/product/a" + filename4;
            CurrentImage5.ImageUrl = "~/img/product/a" + filename5;
            CurrentImage6.ImageUrl = "~/img/product/a" + filename6;
            CurrentImage7.ImageUrl = "~/img/product/a" + filename7;
        }

        protected void btnFileUpload_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string extension = (System.IO.Path.GetExtension(imageFileUploadControl.FileName).ToLower());
            if (extension == ".jpg" || extension == ".jpeg" || extension == ".png" || extension == ".gif")
            {
                System.Drawing.Image img = System.Drawing.Image.FromStream(imageFileUploadControl.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;

                DatabaseEntities db = new DatabaseEntities();
                tblImage imageData = new tblImage();
                imageData.AlternateText = txtAltText.Text;
                imageData.Width = width;
                imageData.Height = height;
                imageData.Extension = extension;
                imageData.ImageName = productId;
                db.tblImages.Add(imageData);
                db.SaveChanges();

                string filename = productId + extension;
                string saveLocation = Server.MapPath("~/img/product/" + filename);
                imageFileUploadControl.SaveAs(saveLocation);

                litUpload.Text = "Your file was uploaded as " + filename + " in the img/product folder.";
            }
            else
            {
                litUpload.Text = "Please upload a file with the correct extension.";
            }
        }

        protected void btnFileUpload1_Click(object sender, EventArgs e)
        {
            string productId = Request.QueryString["Id"];
            string extension1 = (System.IO.Path.GetExtension(imageFileUploadControl1.FileName).ToLower());
            if (extension1 == ".jpg" || extension1 == ".jpeg" || extension1 == ".png" || extension1 == ".gif")
            {
                System.Drawing.Image img = System.Drawing.Image.FromStream(imageFileUploadControl1.PostedFile.InputStream);
                int width = img.Width;
                int height = img.Height;

                DatabaseEntities db = new DatabaseEntities();
                tblImage1 imageData1 = new tblImage1();
                imageData1.AlternateText = txtAltText1.Text;
                imageData1.Width = width;
                imageData1.Height = height;
                imageData1.Extension = extension1;
                imageData1.ImageName = productId;
                db.tblImage1.Add(imageData1);
                db.SaveChanges();

                string filename = "a" + productId + extension1;
                string saveLocation = Server.MapPath("~/img/product/" + filename);
                imageFileUploadControl1.SaveAs(saveLocation);

                litUpload1.Text = "Your file was uploaded as " + filename + " in the img/product folder.";
            }
            else
            {
                litUpload1.Text = "Please upload a file with the correct extension.";
            }
        }
    }
}