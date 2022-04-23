using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Net;
using System.Configuration;


namespace cp
{
    public partial class pass : System.Web.UI.Page
    {
        public static string to;
        public string mail;
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online Car Parkng SystemConnectionString3"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT [email] FROM [register] where email = @email", con);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {

                    MailMessage mail = new MailMessage();
                    SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                    mail.From = new MailAddress("passrecovery2408@gmail.com");
                    to = (txtemail.Text);
                    mail.To.Add(to);
                    mail.Subject = "Resetting Link for password";
                    mail.Body = "http://localhost:50771/change%20password.aspx";

                    SmtpServer.Port = 587;
                    SmtpServer.Credentials = new System.Net.NetworkCredential("passrecovery2408@gmail.com", "passrecovery");
                    SmtpServer.EnableSsl = true;

                    SmtpServer.Send(mail);
                    Response.Write("<script>alert('Link is sent to your mail check in inbox.....')</script>");


                }
                else if (!sdr.IsDBNull(0))
                {



                    Response.Write("<script>alert('Your Email is not registered with us.....')</script>");
                }
                con.Close();
            }catch(Exception)
            {
                Response.Write("<script>alert('Your Email is not registered with us.....');</script>");
            }
        }
    }





}