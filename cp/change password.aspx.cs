using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Configuration;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;


namespace cp
    

{
    public partial class fp5 : System.Web.UI.Page
    {
        string username = pass.to;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtResetPass.Text == txtResetPassVer.Text)
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online Car Parkng SystemConnectionString3"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE[dbo].[register] SET [password] = '" + txtResetPass.Text + "' WHERE email='" + username + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('password change completed successfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('wrong password')</script>");
                }
            }
            catch(Exception ex)
            {


                Response.Write("<script>alert('Error :" + ex.Message + "');</script>");
            }
            
        }
    }
}