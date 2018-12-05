using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoccerLeague
{
    public partial class MatchScheduling : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Session["Theme"] != null)
            {
                this.Theme = Session["Theme"].ToString();
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

            displayScheduleMatches();
        }

        private void displayScheduleMatches()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("psDisplayMatchSchedule", connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;
                connection.Open();
                MatchDate.DataSource = command.ExecuteReader();
                MatchDate.DataBind();

            }
        }

        protected void ScheduleMatch(object sender, EventArgs e)
        {

            if (HostClub.SelectedIndex != 0 && GuestClub.SelectedIndex != 0)
            {
                String strHostClub = HostClub.SelectedValue.ToString();
                String strGuestClub = GuestClub.SelectedValue.ToString();
                DateTime matchDate = calMatchDate.SelectedDate;
                DateTime date = DateTime.Parse(matchDate.ToString());
                int duplicate = -1;
                string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                SqlDataReader reader;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand("psDisplayMatchSchedule", connection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    connection.Open();
                    reader = command.ExecuteReader();
                    while (reader.Read())
                    {

                        if (reader["HostClub"].ToString() == strHostClub && reader["GuestClub"].ToString() == strGuestClub || reader["HostClub"].ToString() == strGuestClub && reader["GuestClub"].ToString() == strHostClub)
                        {
                            DateTime val = DateTime.Parse(reader["MatchDate"].ToString());
                            if (DateTime.Compare(val, matchDate) == 0)
                            {
                                duplicate = 0;
                            }

                        }

                    }
                    reader.Close();
                    //string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
                    //using (SqlConnection connection = new SqlConnection(connectionString))
                    //{
                    if (duplicate == -1)
                    {
                        SqlCommand insertcommand = new SqlCommand("spMatchSchedule", connection);
                        insertcommand.CommandType = System.Data.CommandType.StoredProcedure;
                        insertcommand.Parameters.AddWithValue("@HostClub", strHostClub);
                        insertcommand.Parameters.AddWithValue("@GuestClub", strGuestClub);
                        insertcommand.Parameters.AddWithValue("@MatchDate", matchDate);
                        //connection.Open();
                        insertcommand.ExecuteNonQuery();
                        connection.Close();
                        //}
                        Response.Redirect("~/Pages/MatchScheduling.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('" + strGuestClub + ", already exist.')</script>");
                    }

                }






            }
            else
            {
                if (HostClub.SelectedIndex != 0)
                {
                    guestError.Visible = true;
                    guestError.Text = "Select proper Guest Club";

                }
                else if (GuestClub.SelectedIndex != 0)
                {
                    hostError.Visible = true;
                    hostError.Text = "Select proper Host Club";

                }
            }




        }

        protected void txtMatchDate_TextChanged(object sender, EventArgs e)
        {
            txtMatchDate.Text = calMatchDate.SelectedDate.ToShortDateString();

        }

        protected void HostClub_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (HostClub.SelectedIndex != 0)
            {
                guestError.Visible = false;
            }
            int selectedHost = HostClub.SelectedIndex;
            int count = 0;
            foreach (ListItem item in GuestClub.Items)
            {
                if (count == selectedHost)
                {
                    item.Attributes.Add("disabled", "true");
                }


                count++;
            }

        }

        protected void GuestClub_SelectedIndexChanged(object sender, EventArgs e)
        {
            int selectedGuest = GuestClub.SelectedIndex;
            int countGuest = 0;
            foreach (ListItem item in HostClub.Items)
            {
                if (countGuest == selectedGuest)
                {
                    item.Attributes.Add("disabled", "true");
                }
                countGuest++;
            }
        }


        protected void calMatchDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date.CompareTo(DateTime.Today) < 0)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}