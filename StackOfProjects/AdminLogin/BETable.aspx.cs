using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BETable : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != "Admin")
        {


            Response.Redirect("~/logout.aspx");

        }
        if (Session["username"] == null)
        {


            Response.Redirect("~/login1.aspx");

        }
    }
}