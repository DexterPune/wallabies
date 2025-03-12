using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;

namespace wallabies_new
{
    public partial class wallabies_warm_patient_warming_contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        #region "Members"
        string Name, Email, Mobile, Subject, Message;
        #endregion
        #region MailSend()
        private bool MailSend()
        {
            bool rslt = false;
            try
            {
                Name = TextName.Text.Trim();
                Email = TextEmailAddress.Text.Trim();
                Mobile = txtMobile.Text.Trim();
                Subject = TextPick.Text.Trim();
                Message = txtMessage.Text.Trim();

                StringBuilder sb = new StringBuilder();
                sb.Append("<b>Contact Details : </b>");
                sb.Append(" ");
                sb.Append(Name);
                sb.Append(" ");

                sb.Append("<br />");
                sb.Append("<br />");
                sb.Append("<b>Email Address : </b>");
                sb.Append(" ");
                sb.Append(Email);

                //sb.Append(",");
                sb.Append("<br />");
                sb.Append("<br />");
                sb.Append("<b>Mobile Number : </b>");
                sb.Append(Mobile);
                sb.Append(" ");

                sb.AppendLine("<br />");
                sb.AppendLine("<br />");
                sb.Append("<b>Subject : </b>");
                sb.Append(Subject);
                sb.AppendLine("<br />");
                sb.AppendLine("<br />");
                sb.Append("<b>Message : </b>");
                sb.Append(Message);

                sb.AppendLine("<br />");
                sb.AppendLine("<br />");
                sb.AppendLine("<br />");

                sb.Append("<b>Thank You</b>");
                sb.AppendLine("<br />");
                sb.Append(Name);

                string body = sb.ToString();
                MailMessage mail = new MailMessage();
                mail.To.Add("info@wallabieswarmcares.com");
                mail.From = new MailAddress("info@wallabieswarmcares.com");
                mail.Subject = "Contact";
                mail.Body = body;
                mail.IsBodyHtml = true;
                SmtpClient Client = new SmtpClient("relay-hosting.secureserver.net", 25);
                Client.EnableSsl = false;
                Client.Credentials = new System.Net.NetworkCredential("info@wallabieswarmcares.com", "#Wallabies@3957$");
                Client.Send(mail);
                rslt = true;
            }
            catch (Exception ex)
            {
                rslt = false;
            }
            return rslt;
        }
        protected void SendMail()
        {
            // Gmail Address from where you send the mail
            var fromAddress = "info@wallabieswarmcares.com";
            // any address where the email will be sending
            var toAddress = TextEmailAddress.Text.ToString();
            //Password of your gmail address
            const string fromPassword = "#Wallabies@3957$";
            // Passing the values and make a email formate to display
            string subject = txtMessage.Text.ToString();
            string body = "From: " + TextName.Text + "\n";
            body += "Mobile No. " + txtMobile.Text + "\n";
            body += "Email: " + TextEmailAddress.Text + "\n";
            body += "Message: \n" + txtMessage.Text + "\n\n\n\n";
            body += "Thank You For Contact with us";
            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "relay-hosting.secureserver.net";
                smtp.Port = 25;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }
        #endregion
        #region
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
              try
                {
                         MailSend();
                         SendMail();
                         ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Message sent successfully. Thank you for contacting us!');window.location='thank-you-wallabies.aspx';", true);
                }
                catch (Exception)
                {
                    ClientScript.RegisterStartupScript(Page.GetType(), "alert", "alert('Message was unsuccessfull, Please try again. Thank you!');window.location='thank-you-wallabies.aspx';", true);
                }
        }
    }
}
        #endregion