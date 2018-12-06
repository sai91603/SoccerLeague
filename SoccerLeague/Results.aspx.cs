using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoccerLeague
{
    public partial class Results : System.Web.UI.Page
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
                    SqlCommand command = new SqlCommand("spDisplayResults", connection);
                    command.CommandType = System.Data.CommandType.StoredProcedure;

                    connection.Open();

                    gridMatchResult.DataSource = command.ExecuteReader();
                    gridMatchResult.DataBind();

                }
            }
        }
        protected void buttonUpdateScore_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UpdateScore.aspx");
        }
    }
}