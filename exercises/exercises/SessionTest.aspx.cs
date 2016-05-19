using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exercises
{
    public partial class SessionTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Hey " + Session["Input"] + ", you passed this information in a session variable.";
            Label2.Text = "Hey " + Session["Input"] + ", you passed this information in a cookie at " + Request.Cookies["Visit"]["LastVisit"] + ".";
            Session.Timeout = 1;
        }
    }
}