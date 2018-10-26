using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SoccerLeague
{
    public partial class Home : System.Web.UI.Page
    {
        public void Page_PreInit()
        {
            if (Session["Theme"] != null)
            {
                this.Theme = Session["Theme"].ToString();
            }
        }
        protected void changetheme(object sender, EventArgs e)
        {
            Response.Redirect("setup.aspx");
        }
    }
}