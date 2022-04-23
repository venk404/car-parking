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
    public partial class siddesh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online Car Parkng SystemConnectionString3"].ConnectionString);

            try
            {
                con.Open();
                string command = "INSERT INTO [siddesh](vehiclae no, [date], [time]) VALUES(@vehicalno),(@date))";
                

               SqlCommand cmd = new SqlCommand(command, con);
                cmd.Parameters.AddWithValue("@vehicalno",TextBox1.Text );
                cmd.Parameters.AddWithValue("@date", Calendar1.TodaysDate);


                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Your Email is not registered with us.....')</script>");

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