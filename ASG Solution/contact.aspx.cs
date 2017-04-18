using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASG_Solution
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MailMessage mm = new MailMessage("skr242@gmail.com", "skr242@gmail.com");
            MailMessage mm1 = new MailMessage("skr242@gmail.com", txtEmail.Text);
            mm.Subject = ddSubject.Text;
            mm.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br /><br /> Subject: " + ddSubject.Text + "<br /><br />Message: " + txtMessage.Text;
            mm.IsBodyHtml = true;
            mm1.Subject = "Funglasses Mail Sent";
            mm1.Body = "Your email has been successfully sent to a Funglasses staff, please give us a moment to respond. Thank you for your patience";
            mm1.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "skr242@gmail.com";
            NetworkCred.Password = "nike081187";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            smtp.Send(mm1);
            litContactSuccess.Text = "Email Sent Successfully.";

        }
    }
}