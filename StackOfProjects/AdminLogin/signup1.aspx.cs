using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class signup1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader rdr;
        
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
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30");
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        con.Open();

        int userid = A2();

        ++userid;


        String name1 = namebox.Text;
        String username1 = usernamebox.Text;
        String pass1 = passbox.Text;
        String cpass1 = cpassbox.Text;
        String phone1 = phonebox.Text;
        String userquali = userqualify.Text;
        String useraddr = useraddress.Text;


        String userdetails = userdesc.Text;


        String stmt = "SELECT COUNT(*) FROM dbo.userdata where username='" + username1 + "'";

        int count = 0;
        using (SqlConnection thisConnection = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30"))
        {
            using (SqlCommand cmdCount = new SqlCommand(stmt, con))
            {
                thisConnection.Open();

                count = (int)cmdCount.ExecuteScalar();

            }
        }











        /*   SqlCommand check_User_Name = new SqlCommand("SELECT * FROM userdata WHERE ([username=@user])",con);
           check_User_Name.Parameters.AddWithValue("@user", username1);
           SqlDataReader reader = check_User_Name.ExecuteReader();
           if(reader.HasRows)
           {//User Exists
           */
        if (count == 1)
        {
            Response.Write("<script language='javascript'>window.alert('User Already Exists!');</script>");
        }
        else
        {

            String que = "Insert into userdata values('" + name1 + "','" + username1 + "','" + pass1 + "','" + cpass1 + "','" + phone1 + "','" + userquali + "','" + useraddr + "','" + userdetails + "'," + userid + ")";

            cmd = new SqlCommand(que, con);

            cmd.ExecuteNonQuery();

            // Response.Write("Registration Successful");
            //   Response.Redirect("~/login1.aspx");
            Response.Write("<script language='javascript'>window.alert('You are Registered Successfully!');window.location='login1.aspx';</script>");



        }


        //}
        // else
        // {//User Doesn't Exist


        //}

        con.Close();


    }






    public int A2()
    {

        String stmt = "SELECT COUNT(*) FROM dbo.userdata";
        int count = 0;
        using (SqlConnection thisConnection = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30"))
        {
            using (SqlCommand cmdCount = new SqlCommand(stmt, con))
            {
                thisConnection.Open();

                count = (int)cmdCount.ExecuteScalar();

            }
        }
        return count;

    }






}