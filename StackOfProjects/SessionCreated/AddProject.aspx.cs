using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;

public partial class SessionCreated_AddProject : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlCommand uploadcmd;
    SqlDataReader rdr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30");

        if (Session["username"] == "Admin")
        {


            Response.Redirect("~/logout.aspx");

        }

        if (Session["username"] == null)
        {


            Response.Redirect("~/logout.aspx");

        }


        con.Open();
        SqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select * from userdata where username='" + Session["username"].ToString() + "'";


        cmd1.ExecuteNonQuery();


        //string check = "select count(*) from userdata where username='" + userid.Text + "'";


        DataTable dt = new DataTable();


        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        da.Fill(dt);

        foreach (DataRow dr in dt.Rows)
        {


            TextBox3.Text = dr["name"].ToString();
            TextBox4.Text = dr["username"].ToString();
            TextBox10.Text = dr["useraddr"].ToString();

           
            if(dr["userqual"].ToString() == "First Year" || dr["userqual"].ToString() == "Second Year" || dr["userqual"].ToString() == "Third Year" || dr["userqual"].ToString() == "Final Year")
            {
                TextBox8.Text = dr["userqual"].ToString();
                TextBox8.ReadOnly = true;
            }
            else
            {
                if(dr["userqual"].ToString() == "Other")
                {
                    qualification.Text = "Your Qualification:";
                }
                else
                {
                    TextBox8.Text = dr["userqual"].ToString();
                    qualification.Text = "Your Qualification:";

                }
                
            }

            

        }

        TextBox3.ReadOnly = true;
        TextBox4.ReadOnly = true;
        TextBox10.ReadOnly = true;
        
        








    }
     public int A()
    {

        String stmt = "SELECT COUNT(*) FROM dbo.PendingProjects";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        String filePath = FileUpload1.PostedFile.FileName;
        String filename = Path.GetFileName(filePath);
        String ext = Path.GetExtension(filename);
        String contenttype = FileUpload1.PostedFile.ContentType;

        SqlCommand loop = con.CreateCommand();
        loop.CommandType = CommandType.Text;
        loop.CommandText = "select * from PendingProjects";
        loop.ExecuteNonQuery();
        DataTable loopdt = new DataTable();


        SqlDataAdapter loopda = new SqlDataAdapter(loop);
        loopda.Fill(loopdt);
        int loopcount = 1;
        foreach (DataRow loopdr in loopdt.Rows)
        {
            String loopque = "update PendingProjects set projectid=" + loopcount++ + " where projectname='" + loopdr["projectname"].ToString() + "'";
            loop = new SqlCommand(loopque, con);
            loop.ExecuteNonQuery();


        }


        String name = TextBox1.Text;
        String tech = TextBox2.Text;
        String owner = TextBox3.Text;
        String email = TextBox4.Text;
        String date = TextBox5.Text;
        String desc = TextBox6.Text;
        String refe = TextBox7.Text;
        String year = TextBox8.Text;
        String clgname = TextBox9.Text;
        String address = TextBox10.Text;
        String status1 = "New One Not Approved";


        int totalrows = A();

        ++totalrows;









        String que = "insert into PendingProjects(projectname,projecttech,projectowner,projectowneremail,projectdate,projectdesc,projectref,currentyear,collegename,address,status,projectid) values('" + name + "','" + tech + "','" + owner + "','" + email + "','" + date + "','" + desc + "','" + refe + "','" + year + "','" + clgname + "','" + address + "','" + status1 + "'," + totalrows + ")";
        cmd = new SqlCommand(que, con);
        cmd.ExecuteNonQuery();



        if (contenttype != String.Empty)
        {


            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);




            //   String que = "
            //insert the file into database
            String strQuery = "Update PendingProjects set ContentType='" + contenttype + "' ,Data=@Data,FileName='" + filename + "' where projectid=" + totalrows + "";

            uploadcmd = new SqlCommand(strQuery, con);
            //   uploadcmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
            // uploadcmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value
            //  = contenttype;
            // uploadcmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;


            uploadcmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;




            uploadcmd.ExecuteNonQuery();






        }








        // Read the file and convert it to Byte Array


        //Set the contenttype based on File Extension
        /*  switch (ext)
          {
              case ".doc":
                  contenttype = "application/vnd.ms-word";
                  break;
              case ".docx":
                  contenttype = "application/vnd.ms-word";
                  break;
              case ".xls":
                  contenttype = "application/vnd.ms-excel";
                  break;
              case ".xlsx":
                  contenttype = "application/vnd.ms-excel";
                  break;
              case ".jpg":
                  contenttype = "image/jpg";
                  break;
              case ".png":
                  contenttype = "image/png";
                  break;
              case ".gif":
                  contenttype = "image/gif";
                  break;
              case ".pdf":
                  contenttype = "application/pdf";
                  break;
          }*/


















        // ScriptManager.RegisterStartupScript(this,this.GetType()),"alert","alert('User details saved successfully');window.location='~/SessionCreated/projects1.aspx';",true);
        //Response.Redirect("~/SessionCreated/projects1.aspx");

        Response.Write("<script language='javascript'>window.alert('Your Project Was Added!');window.location='projects1.aspx';</script>");

        con.Close();
    }




}