using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


    public partial class Home : System.Web.UI.Page
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

        }
    protected void changetheme(object sender, EventArgs e)
    {
        Response.Redirect("setup.aspx");
    }

    //protected void btnChangeTheme_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("~/setup.aspx");
    //}



}
