using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoccerLeague
{
    public partial class AddClub1 : System.Web.UI.Page
    {

        String ClubID;

        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Page_PreInit(object sender, EventArgs e)
        {


            if (Session["Theme"] != null)
            {
                this.Theme = Session["Theme"].ToString();
            }
        }
    }

    protected void saveClub_Click(object sender, EventArgs e)
    {

        string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;
        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand duplicateClub = new SqlCommand("spClubName", connection);
        //SqlCommand getClubID = new SqlCommand("getClubID", connection);
        connection.Open();
        SqlDataReader reader = duplicateClub.ExecuteReader();

        List<string> clubs = new List<string>();

        while (reader.Read())
        {
            string clubName = (string)reader["ClubName"];

            clubs.Add(clubName);
        }
        reader.Close();
        if (!clubs.Contains(WebUserControl.Name))
        {
            SqlCommand command = new SqlCommand("spClubDetails", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@ClubName", WebUserControl.Name);
            command.Parameters.AddWithValue("@ClubCity", WebUserControl.City);
            command.Parameters.AddWithValue("@RegistrationNumber", Int32.Parse(registrationNumber.Text));
            command.Parameters.AddWithValue("@Address", address.Text);

            command.ExecuteNonQuery();
            SqlCommand getClubID = new SqlCommand("getClubID", connection);
            getClubID.CommandType = System.Data.CommandType.StoredProcedure;
            getClubID.Parameters.AddWithValue("@Clubname", WebUserControl.Name);
            SqlDataReader readClubID = getClubID.ExecuteReader();
            if (readClubID.Read())
            {
                ClubID = readClubID["ClubId"].ToString();
                Session["ClubID"] = ClubID;
            }

            connection.Close();
            addPlayer.Visible = true;
            addPlayer.Focus();

        }
        else
        {

            Response.Write("<script>alert('" + WebUserControl.Name + ", already exist.')</script>");

        }


    }

    protected void addPlayer_Click(object sender, EventArgs e)
    {

        PlayerInfo.Visible = true;
        txtPlayerName.Focus();

    }
    protected void SelectDate(object sender, EventArgs e)
    {

        // addPlayer.Visible = true;
        if (txtDOB.Text != string.Empty)
            calDOB.SelectedDate = Convert.ToDateTime(txtDOB.Text);

        calDOB.Visible = true;
        calDOB.Focus();
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        //addPlayer.Visible = true;
        calDOB.Focus();
        txtDOB.Text = calDOB.SelectedDate.ToLongDateString();
        calDOB.Visible = false;

    }
    protected void SavePlayer(object sender, EventArgs e)
    {
        String PlayerName = txtPlayerName.Text;
        int JersyNumber = int.Parse(txtJersyNumber.Text);
        DateTime DOB = calDOB.SelectedDate;
        ClubID = Session["ClubID"].ToString();
        string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand("spAddPlayer", connection);
            command.CommandType = System.Data.CommandType.StoredProcedure;
            command.Parameters.AddWithValue("@PlayerName", PlayerName);
            command.Parameters.AddWithValue("@DateOfBirth", DOB);
            command.Parameters.AddWithValue("@JerseyNumber", JersyNumber);
            command.Parameters.AddWithValue("@ClubID", int.Parse(ClubID));
            connection.Open();
            command.ExecuteNonQuery();


        }
        txtPlayerName.Text = "";
        txtJersyNumber.Text = "";
        txtDOB.Text = "";
        success.Visible = true;

    }


    protected void Cancel(object sender, EventArgs e)
    {
        PlayerInfo.Visible = false;
        WebUserControl.Name = "";
        WebUserControl.City = "";
        registrationNumber.Text = "";
        address.Text = "";
    }
}
}