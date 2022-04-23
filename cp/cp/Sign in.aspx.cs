using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace cp
{
    public partial class Sign_in : System.Web.UI.Page
    {
       
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
       
        string username;
        string pwd; 

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online Car Parkng SystemConnectionString3"].ConnectionString);

                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT [username], [password] , [usertype] FROM [register] where username = @username and password = @password", con);

                cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2.Text);

                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    username = TextBox1.Text;
                    pwd = TextBox2.Text;




                    if (username.Equals("venkatesh") && pwd.Equals("venkatesh"))
                    {
                        Response.Redirect("admin form.aspx");
                    }
                    else
                    {

                        Session["User"] = TextBox1.Text;
                        Response.Redirect("~/WebForm2.aspx");

                    }

                }

                else
                {

                    Response.Write("<script>alert('invalid username and password')</script>");
                }

                con.Close();
            }
            catch (Exception)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('something went wrong')", true);

            }


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("forget password.aspx");

        }


    }
}