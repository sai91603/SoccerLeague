using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Name:Sai Charan Mittapalli Id:300973365
public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //Name:Sai Charan Mittapalli Id:300973365
    public string Name
    {
        get
        {
            return TxtName.Text;
        }
        set
        {
            this.TxtName.Text = value;
        }
    }
    public string City
    {
        get
        {
            return TxtCity.Text;
        }
        set
        {
            this.TxtCity.Text = value;
        }
    }

}
//Name:Sai Charan Mittapalli Id:300973365
