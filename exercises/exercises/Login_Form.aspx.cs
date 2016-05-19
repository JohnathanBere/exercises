using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exercises
{
    public partial class Login_Form : System.Web.UI.Page
    {
        protected void Authenticate(string username, string password)
        {
            username = uBox.Text.ToString();
            password = pBox.Text.ToString();

            Session["Input"] = username + " " + password;

            if (username == "John" && password == "Bere")
            {
                Response.Write(Session["Input"]);
                Response.Redirect("Login_Success.aspx");
            }

            else
            {
                Session["Failure"] = "Failed";
                Response.Write(Session["Failure"]);
                Response.Redirect("Login_Form.aspx");
                
            }
        }

        protected void AuthenticateViaForm(string username, string password)
        {
            username = uBox.Text.ToString();
            password = pBox.Text.ToString();

            if (username == "user" && password == "pass")
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(uBox.Text, false);

        }

        protected void AuthenticateViaDatabase(string username, string password)
        {
            username = uBox.Text.ToString();
            password = pBox.Text.ToString();

            if (username == "user" && password == "pass")
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(uBox.Text, false);

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "" + Session["Failure"];
            Session.Timeout = 1;
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            // Authenticate(uBox.Text.ToString(), pBox.Text.ToString());
            AuthenticateViaForm(uBox.Text.ToString(), pBox.Text.ToString());
        }
    }
}