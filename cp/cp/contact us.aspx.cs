using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;


namespace cp
{
    public partial class contact_us : System.Web.UI.Page
    {
                public string from;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnsubmit_Click(object sender, EventArgs e)
        {
            sendmail();
            InsertData1();
        }
        private void sendmail()
        {

               MailMessage mail = new MailMessage();
                    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                    from = (TextBox2.Text);

                    mail.From = new MailAddress(from);
                    
                    mail.To.Add("passrecovery2408@gmail.com");
                    mail.Subject = "FEEDBACK RESPONSE";
                    mail.Body = TextBox3.Text;

                    SmtpServer.Port = 587;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("passrecovery2408@gmail.com", "passrecovery");
                    SmtpServer.EnableSsl = true;

                    SmtpServer.Send(mail);
                     Response.Write("<script>alert('THANK YOU YOR RESPONSE.....')</script>");


            


        }
        private void InsertData1()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online Car Parkng SystemConnectionStringfeedback"].ConnectionString);

            try
            {
                con.Open();
                string command = "INSERT INTO [feedback1] ([Name], [Email], [Subject]) VALUES (@Name, @Email, @Subject)";
                SqlCommand cmd = new SqlCommand(command, con);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Email", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Subject", TextBox3.Text);
                cmd.ExecuteNonQuery();




            }

            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('SOMETHING WENT WRONG')", true);
                throw;

            }
            finally
            {
                con.Close();
            }

        }

    }
}