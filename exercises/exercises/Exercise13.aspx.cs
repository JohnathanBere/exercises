using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace exercises
{
    public partial class Exercise13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void uplBtn_Click(object sender, EventArgs e)
        {
            if (picUpl.HasFile)
            {
                String sPath = MapPath(picUpl.FileName);
                picUpl.PostedFile.SaveAs(sPath);
                msgLabel.Text = "Received " + picUpl.FileName + ", Content Type " + picUpl.PostedFile.ContentType + ", Length " + picUpl.PostedFile.ContentLength;
                string sql;
                sql = "insert into pictures (picture,title) values ('" + picUpl.FileName + "','" + titleBox.Text + "')";
                sql_pictures.SelectCommand = sql;
                sql_pictures.DataBind();
                Response.Redirect("Exercise13.aspx");
            }

            else
            {
                msgLabel.Text = "Image was not uploaded";
            }
        }
    }
}