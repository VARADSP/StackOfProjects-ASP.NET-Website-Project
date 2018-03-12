using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class home : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30");

        con.Open();
       

        if (Session["username"] == "Admin")
        {


            Response.Redirect("~/logout.aspx");

        }
        if (Session["username"] == null)
        {


            Response.Redirect("~/logout.aspx");

        }



        SqlCommand cmd1 = con.CreateCommand();


        cmd1.CommandType = CommandType.Text;

        String username = Convert.ToString(Session["username"]);

        cmd1.CommandText = "select * from userdata where username='" + username + "'";



        cmd1.ExecuteNonQuery();


        //string check = "select count(*) from userdata where username='" + userid.Text + "'";


        DataTable dt = new DataTable();


        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        da.Fill(dt);

        foreach (DataRow dr in dt.Rows)
        {
            user.Text = dr["name"].ToString();

//            Label4.Text = dr["name"].ToString();

  //          Label2.Text = "Welcome " + dr["username"].ToString();




        }




        con.Close();






    }
}