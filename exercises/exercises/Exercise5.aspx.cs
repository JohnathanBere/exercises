using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exercises
{
    public partial class Exercise5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["input"] = TextBox1.Text.ToString();
            Response.Write(Session["input"]);
            Response.Cookies["Visit"]["LastVisit"] = DateTime.Now.ToString();
            Response.Cookies["Visit"].Expires = DateTime.Now.AddSeconds(90);
            Response.Redirect("SessionTest.aspx");
        }
    }
}