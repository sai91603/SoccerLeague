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
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Page_PreInit()
        {
            if (Request.QueryString["Theme"] != null)
            {
                Page.Theme = Request.QueryString["Theme"].ToString();
            }
        }



        protected void ddlThemes_SelectedIndexChanged(object sender, EventArgs e)
        {
            string name = ddlThemes.SelectedItem.Value;
            Response.Redirect("~/setup.aspx?Theme=" + name);
        }
    }
}