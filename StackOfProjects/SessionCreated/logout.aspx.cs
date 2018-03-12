using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {


            Response.Redirect("~/login1.aspx");

        }
        Session.Clear();
        //Response.Redirect("~/login1.aspx");
        Response.Write("<script language='javascript'>window.alert('You are Logged Out Successfully!');window.location='login1.aspx';</script>");
    }
}