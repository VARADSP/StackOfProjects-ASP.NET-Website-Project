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
        

       
   
    }
    protected void Button_Id_Click(object sender, EventArgs e)
    {



        con.Open();

        SqlCommand cmd11 = new SqlCommand("select * from userdata where username=@username and pass=@pass",con);
        cmd11.Parameters.AddWithValue("@username",userid.Text);
        cmd11.Parameters.AddWithValue("@pass", pass.Text);
        SqlDataAdapter da2 = new SqlDataAdapter(cmd11);
        DataTable dt2 = new DataTable();
        da2.Fill(dt2);
        if(dt2.Rows.Count > 0)
        {


            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;

            cmd1.CommandText = "select * from userdata where username='" + userid.Text + "' and pass='" + pass.Text + "'";


            cmd1.ExecuteNonQuery();


            //string check = "select count(*) from userdata where username='" + userid.Text + "'";


            DataTable dt = new DataTable();


            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            da.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {


                if (dr["username"].ToString() == "parlikarvarad@gmail.com" && dr["pass"].ToString() == "password")
                {
                    Session["username"] = "Admin";

                    //Response.Redirect("~/AdminLogin/projects1.aspx");//admin Login!!

                    Response.Write("<script language='javascript'>window.alert('Welcome Admin!');window.location='AdminLogin/projects1.aspx';</script>");

                }
                else
                {
                    Session["username"] = dr["username"].ToString(); // Normal User Login
                    Response.Write("<script language='javascript'>window.alert('You are Logged In Successfully!');window.location='SessionCreated/projects1.aspx';</script>");

                }


                //   Response.Redirect("~/SessionCreated/projects1.aspx");

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
        else
        {
            SqlCommand cmd12 = new SqlCommand("select * from userdata where username=@username1", con);
            cmd12.Parameters.AddWithValue("@username1",userid.Text);
            SqlDataAdapter da22 = new SqlDataAdapter(cmd12);
            DataTable dt22 = new DataTable();
            da22.Fill(dt22);
            if(dt22.Rows.Count >0)
            {
                Response.Write("<script language='javascript'>window.alert('Entered Password is Incorrect!');window.location='login1.aspx';</script>");
            }
            else if(dt22.Rows.Count == 0)
            {
                Response.Write("<script language='javascript'>window.alert('Wrong Credentials Entered');window.location='login1.aspx';</script>");
            }







        }
        con.Close();

        }
    
        




   


     
}