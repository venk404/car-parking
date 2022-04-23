using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace cp
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online Car Parkng SystemConnectionString3"].ConnectionString);

            try
            {
                con.Open();
                string command = "INSERT INTO register(username,password,email,contactno) VALUES(@username,@password,@email,@contactno)";
                SqlCommand cmd = new SqlCommand(command, con);

                cmd.Parameters.AddWithValue("@username",txturname.Text); 
                cmd.Parameters.AddWithValue("@password",txtpasswd.Text);
                cmd.Parameters.AddWithValue("@email",txtemail.Text);
                cmd.Parameters.AddWithValue("@contactno",txtcontact.Text);

                cmd.ExecuteNonQuery();

                Label1.Visible = true;
            
            }
            catch(Exception)
            {
                Label1.Text = "something went wrong...!";

                throw;

            }finally
            {
                con.Close();
            }
        }

    }
}