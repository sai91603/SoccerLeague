using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoccerLeague
{
    public partial class Clubs : System.Web.UI.Page
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
            DisplayClubsList();
        }

        private void DisplayClubsList()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("psDisplayClub", connection);
                command.CommandType = System.Data.CommandType.StoredProcedure;

                connection.Open();

                GridView1.DataSource = command.ExecuteReader();
                GridView1.DataBind();

            }

        }

        protected void LinkButtonClick(Object sender, EventArgs e)
        {
            Session["ClubName"] = ((LinkButton)sender).Text;
            Response.Redirect("~/Pages/ClubDetails.aspx");
        }
    }