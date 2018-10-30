using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoccerLeague
{
    public partial class setup : System.Web.UI.Page
    {
        string Name;
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
        protected void ddlThemes_SelectedIndexChanged(object sender, EventArgs e)
        {
            Name = ddlThemes.SelectedItem.Text;
            Session["Theme"] = Name;
            Response.Redirect("/setup.aspx");
        }
    }
}