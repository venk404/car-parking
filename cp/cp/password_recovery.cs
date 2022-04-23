using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Web.UI;



namespace cp
{
    public partial class Forget_password : System.Web.UI.Page
    {

        protected void sendcode_Click(object sender, EventArgs e)
        {

            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("passrecovery2408@gmail.com");
                mail.To.Add("txtemail.Tostring");
                mail.Subject = "Test Mail";
                mail.Body = "This is for testing SMTP mail from GMAIL";

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("passrecovery2408@gmail.com", "passrecovery");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('mailsend')", true);

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('error')", true);
            }
        }

        protected void Verify_Click(object sender, EventArgs e)
        {
            
        }




    }




}


