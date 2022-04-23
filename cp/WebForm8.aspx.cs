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
using System.Text;
using System.Net;
using System.Collections.Specialized;

namespace cp
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        String parkingStand1 = "";
        public static string pk = "";
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        public static string to;
        public string mail;






        protected void Page_Load(object sender, EventArgs e)
        {






        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            EnablePanel();


            Callgcar();
           
            Callgcar1();
            Callgcar2();
            Callgcar3();










            if (Session["User"] != null)
            {
                Txtusername.Text = Session["User"].ToString();
            }



        }




        private void Callgcar()
        {
            A1.ImageUrl = "~/available.png";
            A2.ImageUrl = "~/available.png";
            A3.ImageUrl = "~/available.png";
            A4.ImageUrl = "~/available.png";
            A5.ImageUrl = "~/available.png";
            A6.ImageUrl = "~/available.png";
            A7.ImageUrl = "~/available.png";
            A8.ImageUrl = "~/available.png";
            A9.ImageUrl = "~/available.png";
            A10.ImageUrl = "~/available.png";

        }
        private void Callgcar1()
        {
            A11.ImageUrl = "~/available.png";
            A12.ImageUrl = "~/available.png";
            A13.ImageUrl = "~/available.png";
            A14.ImageUrl = "~/available.png";
            A15.ImageUrl = "~/available.png";
            A16.ImageUrl = "~/available.png";
            A17.ImageUrl = "~/available.png";
            A18.ImageUrl = "~/available.png";
            A19.ImageUrl = "~/available.png";
            A20.ImageUrl = "~/available.png";
        }
        private void Callgcar2()
        {
            A21.ImageUrl = "~/available.png";
            A22.ImageUrl = "~/available.png";
            A23.ImageUrl = "~/available.png";
            A24.ImageUrl = "~/available.png";
            A25.ImageUrl = "~/available.png";
            A26.ImageUrl = "~/available.png";
            A27.ImageUrl = "~/available.png";
            A28.ImageUrl = "~/available.png";
            A29.ImageUrl = "~/available.png";
            A30.ImageUrl = "~/available.png";

        }

        private void Callgcar3()
        {
            A31.ImageUrl = "~/available.png";
            A32.ImageUrl = "~/available.png";
            A33.ImageUrl = "~/available.png";
            A34.ImageUrl = "~/available.png";
            A35.ImageUrl = "~/available.png";
            A36.ImageUrl = "~/available.png";
            A37.ImageUrl = "~/available.png";
            A38.ImageUrl = "~/available.png";
            A39.ImageUrl = "~/available.png";
            A40.ImageUrl = "~/available.png";
        }




        private void EnablePanel()
        {
            if (drop1.SelectedValue == "JUHU BEACH" && drop2.SelectedValue == "Park 1")
            {
                L1A1.Visible = true;
                L1A2.Visible = false;
                L2A1.Visible = false;
                L2A2.Visible = false;


            }
            else
            {
                if (drop1.SelectedValue == "JUHU BEACH" && drop2.SelectedValue == "Park 2")
                {
                    L1A1.Visible = false;
                    L1A2.Visible = true;
                    L2A1.Visible = false;
                    L2A2.Visible = false;

                }
                else
                {
                    if (drop1.SelectedValue == "THANE STATION" && drop2.SelectedValue == "Park 1")
                    {
                        L1A1.Visible = false;
                        L1A2.Visible = false;
                        L2A1.Visible = true;
                        L2A2.Visible = false;



                    }
                    else
                    {
                        if (drop1.SelectedValue == "THANE STATION" && drop2.SelectedValue == "Park 2")
                        {
                            L1A1.Visible = false;
                            L1A2.Visible = false;
                            L2A1.Visible = false;
                            L2A2.Visible = true;
                        }

                    }
                }
            }
        }
        private void pnlbookinfo1()
        {
            pnlbookinfo.Visible = true;
        }

        protected void populateDateOnLable()
        {

            lbLocation.Text = drop1.SelectedValue;
            lblParkingArea.Text = drop2.SelectedValue;
            lblFrom.Text = RadDateTimePicker1.SelectedDate.ToString();
            lblTo.Text = RadDateTimePicker3.SelectedDate.ToString();
            lblParkingstand.Text = parkingStand1;
            ParkingCost();
        }








        private void ParkingCost()
        {
            DateTime datefrom = Convert.ToDateTime(RadDateTimePicker1.SelectedDate);
            DateTime dateto = Convert.ToDateTime(RadDateTimePicker3.SelectedDate);
            TimeSpan datediff = dateto - datefrom;
            var hours = datediff.Hours;
            var Day = datediff.Days;
            var totalhour = ((Day * 24) + hours);
            var rateperhour = 10;
            lblTotalCost.Text = Convert.ToString(totalhour * rateperhour);

        }

        protected void A1_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A1";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;








        }

        protected void A2_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A2";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A3_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A3";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;


        }

        protected void A4_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A4";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A5_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A5";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A6_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A6";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A7_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A7";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A8_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A8";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A9_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A9";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A10_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A10";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A11_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A11";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A12_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A12";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A13_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A13";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A14_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A14";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A15_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A15";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A16_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A16";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A17_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A17";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A18_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A18";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A19_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A19";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A20_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A20";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A21_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A21";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A22_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A22";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A23_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A23";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A24_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A24";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A25_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A25";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A26_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A26";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A27_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A27";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A28_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A28";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A29_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A29";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A30_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A30";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A31_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A31";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A32_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A32";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A33_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A33";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A34_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A34";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A35_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A35";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A36_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A36";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A37_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A37";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A38_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A38";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A39_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A39";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }

        protected void A40_Click(object sender, ImageClickEventArgs e)
        {
            parkingStand1 = "A40";
            populateDateOnLable();
            pnlbookinfo1();
            btnBookNow.Visible = true;
            btnConfirmBooking.Visible = false;

        }


        protected void BTN_BOOKNOW_Click(object sender, EventArgs e)
        {

            btnBookNow.Visible = false;
            btnConfirmBooking.Visible = true;
        }

        protected void BTNCNF_BOOKING_Click(object sender, EventArgs e)
        {

            btnBookNow.Visible = false;
            btnConfirmBooking.Visible = false;



            InsertData();
            Sendmails();
            Response.Redirect("payment button.html");
            




        }
       














        
      



        private void InsertData()
        {


            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online Car Parkng SystemConnectionStringBooking Details"].ConnectionString);

            try
            {
                con.Open();
                string command = "INSERT INTO [BookingDetail] ([Username], [Location], [Parking_Area], [Date_From], [Date_To], [Parking_Stand], [Car_Name], [Car_Number], [Total_Cost]) VALUES (@Username, @Location, @Parking_Area, @Date_From, @Date_To, @Parking_Stand, @Car_Name, @Car_Number, @Total_Cost)";
                SqlCommand cmd = new SqlCommand(command, con);
                cmd.Parameters.AddWithValue("@username", Txtusername.Text);
                cmd.Parameters.AddWithValue("@Location", lbLocation.Text);
                cmd.Parameters.AddWithValue("@Parking_Area", lblParkingArea.Text);
                cmd.Parameters.AddWithValue("@Date_From", lblFrom.Text);
                cmd.Parameters.AddWithValue("@Date_To", lblTo.Text);
                cmd.Parameters.AddWithValue("@Parking_Stand", lblParkingstand.Text);
                cmd.Parameters.AddWithValue("@Car_Name", txtcarname.Text);
                cmd.Parameters.AddWithValue("@Car_Number", txtcarnumber.Text);
                cmd.Parameters.AddWithValue("@Total_Cost", lblTotalCost.Text);

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
        private void Sendmails()
        {
            try
            {
                String var1;
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Online Car Parkng SystemConnectionString3"].ConnectionString);


                String check = "select Email from Register where Username = '" + Session["User"] + "'";
                SqlCommand com = new SqlCommand(check, con);
                con.Open();
                String temp = (com.ExecuteScalar().ToString());
                con.Close();
                if (temp != null)
                {
                    var1 = temp;
                    {


                        MailMessage mail = new MailMessage();
                        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                        mail.From = new MailAddress("recoverypass60@gmail.com");


                        mail.To.Add(var1);
                        mail.Subject = "BOOKING DETAILS";
                        StringBuilder sb = new StringBuilder();
                        sb.AppendLine("Dear " + Txtusername.Text);
                        sb.AppendLine("YOUR BOOKING Details");
                        sb.AppendLine("Location: " + lbLocation.Text);
                        sb.AppendLine("Date From: " + lblFrom.Text);
                        sb.AppendLine("Date To: " + lblTo.Text);
                        sb.AppendLine("ParkingArea: " + lblParkingArea.Text);
                        sb.AppendLine("Parkingstand: " + lblParkingstand.Text);
                        sb.AppendLine("TotalCost: " + lblTotalCost.Text);
                        sb.AppendLine("Thank You For Using our Services Please Give Feedback For Improving Our Services:http://localhost:50771/contact%20us.aspx");





                        mail.Body = sb.ToString();

                        SmtpServer.Port = 587;
                        SmtpServer.Credentials = new System.Net.NetworkCredential("recoverypass60@gmail.com", "recoverypass60@123");
                        SmtpServer.EnableSsl = true;

                        SmtpServer.Send(mail);
                        Response.Write("<script>alert('Thank you for using our services......')</script>");

                    }



                }






            }
            catch (Exception)
            {
                Response.Write("<script>alert('Something went wrong');</script>");
            }





        }

    }
}
