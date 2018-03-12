using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class login1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader rdr;

       
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30");

        if (Session["username"] != "Admin")
        {


            Response.Redirect("~/logout.aspx");

        }
       
   
    }
    protected void Button_Id_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select * from userdata where username='"+userid.Text+"' and pass='" + pass.Text+"'";

        
        cmd1.ExecuteNonQuery();
        
        //string check = "select count(*) from userdata where username='" + userid.Text + "'";
        

       DataTable dt = new DataTable();

       
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        da.Fill(dt);

        foreach(DataRow dr in dt.Rows)
        {
            Session["username"] = dr["username"].ToString();
            Response.Redirect("~/projects1.aspx");
        }

       // SqlCommand com = new SqlCommand("select count(*) from userdata where username='" + userid.Text + "'", con);
        //int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        //con.Close();


        /* if (temp == 1)
         {
             con.Open();
             string checkpass = "select pass from userdata where username='" + userid.Text + "'";
             SqlCommand passcom = new SqlCommand(checkpass, con);
             string password = passcom.ExecuteScalar().ToString().Replace(" ", "");

             if (password == pass.Text)
             {
                 Response.Redirect("~/projects1.aspx");
             }

             else if(pass.Text == "master" && userid.Text == "parlikarvarad@gmail.com")
             {
                 Response.Redirect("~/projectsadmin.aspx");
             }
             else
             {
                 Label3.Text = "Invalid Password";
             }
         }
         else
         {
             Label2.Text = "Invalid User";
         }
   
      */   
    }
     
}