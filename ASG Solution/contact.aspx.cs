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

        //https://www.aspsnippets.com/Articles/How-to-create-Contact-Us-Page-in-ASPNet.aspx
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MailMessage mailmsg = new MailMessage("skr242@gmail.com", "skr242@gmail.com");
            MailMessage mailmsg1 = new MailMessage("skr242@gmail.com", txtEmail.Text);
            mailmsg.Subject = ddSubject.Text;
            mailmsg.Body = "Name: " + txtName.Text + "<br /><br />Email: " + txtEmail.Text + "<br /><br /> Subject: " + ddSubject.Text + "<br /><br />Message: " + txtMessage.Text;
            mailmsg.IsBodyHtml = true;
            mailmsg1.Subject = "Funglasses Mail Sent";
            mailmsg1.Body = "Your email has been successfully sent to a Funglasses staff, please give us a moment to respond. Thank you for your patience";
            mailmsg1.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "skr242@gmail.com";
            NetworkCred.Password = "nike081187";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mailmsg);
            smtp.Send(mailmsg1);
            litContactSuccess.Text = "Email Sent Successfully.";

        }
    }
}