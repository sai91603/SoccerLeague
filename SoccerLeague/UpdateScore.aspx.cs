using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoccerLeague
{
    public partial class UpdateScore : System.Web.UI.Page
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
            if (!IsPostBack)
            {

                string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand("spScoreHostClub", connection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;

                    connection.Open();

                    DropDownListHostClub.DataSource = command.ExecuteReader();
                    DropDownListHostClub.DataBind();

                }
            }

        }

        protected void DropDownListHostClub_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownListHostClub.SelectedIndex != 0)
            {

                string selectedHostClub = DropDownListHostClub.SelectedValue.ToString();
                string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand("spScoreGuestClub", connection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@HostClub", selectedHostClub);

                    connection.Open();

                    DropDownListGuestClub.DataSource = command.ExecuteReader();
                    DropDownListGuestClub.Items.Clear();
                    DropDownListGuestClub.Items.Insert(0, new ListItem("Select", ""));
                    DropDownListGuestClub.DataBind();

                }
                DropDownListGuestClub.Enabled = true;
            }
            else
            {
                hostError.Visible = true;
                hostError.Text = "Select Proper Host Club";
            }
        }

        protected void DropDownListGuestClub_SelectedIndexChanged(object sender, EventArgs e)

        {

            if (DropDownListGuestClub.SelectedIndex != 0)

            {

                string selectedHostClub = DropDownListHostClub.SelectedValue.ToString();
                string selectedGuestClub = DropDownListGuestClub.SelectedValue.ToString();

                string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand("spScoreDate", connection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@HostClub", selectedHostClub);
                    command.Parameters.AddWithValue("@GuestClub", selectedGuestClub);

                    connection.Open();

                    DropDownListDate.DataSource = command.ExecuteReader();
                    DropDownListDate.Items.Clear();
                    DropDownListDate.Items.Insert(0, new ListItem("Select", ""));
                    DropDownListDate.DataBind();

                }
                DropDownListDate.Enabled = true;
                HostScoreTextBox.Enabled = true;
                GuestScoreTextBox.Enabled = true;
            }
            else
            {
                guestError.Visible = true;
                guestError.Text = "Select Proper Guest Club";
            }


        }
    }
}