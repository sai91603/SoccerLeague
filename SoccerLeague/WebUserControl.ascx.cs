using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string Name
    {
        get { return clubName.Text; }
        set { clubName.Text = value; }
    }

    public string City
    {
        get { return cityName.Text; }
        set { cityName.Text = value; }
    }

}

