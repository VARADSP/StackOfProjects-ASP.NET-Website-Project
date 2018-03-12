using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class AdminLogin_updateprojects : System.Web.UI.Page
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

                con.Open();
        

    }
    protected void update_Click(object sender, EventArgs e)
{

    String name = TextBox1.Text.ToString();
            String tech = TextBox2.Text.ToString();
        String owner = TextBox3.Text.ToString();
        String email = TextBox4.Text.ToString();
        String date = TextBox5.Text.ToString();
        String desc = TextBox6.Text.ToString();
        String refe = TextBox7.Text.ToString();
        String year = TextBox8.Text.ToString();
        String clgname = TextBox9.Text.ToString();
        String address = TextBox10.Text.ToString();
        String name2 = TextBox1.Text.ToString();

        int id = Convert.ToInt32(TextBox11.Text);

    
        String que = "Update PendingProjects set projectname='" + name2 + "',projecttech='" + tech + "',projectowner='" + owner + "',projectowneremail='" + email + "',projectdate='" + date + "',projectdesc='" + desc + "',projectref='" + refe + "',currentyear='" + year + "',collegename='" + clgname + "',address='" + address + "' where projectid=" + id + "";
        cmd = new SqlCommand(que,con);
        cmd.ExecuteNonQuery();
        
        Response.Write("<script language='javascript'>window.alert('Your Project Was Updated!');window.location='projects1.aspx';</script>");

}
protected void fetch_Click(object sender, EventArgs e)
{
    int id = Convert.ToInt32(TextBox11.Text);



    SqlCommand cmd1 = con.CreateCommand();


            cmd1.CommandType = CommandType.Text;



            cmd1.CommandText = "select * from PendingProjects where projectid='" + id + "'";



            cmd1.ExecuteNonQuery();


            //string check = "select count(*) from userdata where username='" + userid.Text + "'";


            DataTable dt = new DataTable();


            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            da.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                TextBox1.Text = dr["projectname"].ToString();
                TextBox2.Text = dr["projecttech"].ToString();
                TextBox3.Text = dr["projectowner"].ToString();
                TextBox4.Text = dr["projectowneremail"].ToString();
                TextBox5.Text = dr["projectdate"].ToString();
                TextBox6.Text = dr["projectdesc"].ToString();
                TextBox7.Text = dr["projectref"].ToString();
                TextBox8.Text = dr["currentyear"].ToString();
                TextBox9.Text = dr["collegename"].ToString();
                TextBox10.Text = dr["address"].ToString();


  

            }
            con.Close();
}
}

    
    
    
