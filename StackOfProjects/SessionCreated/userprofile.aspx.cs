using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Text.RegularExpressions;
using System.Text;
using System.Configuration;
public partial class contact : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader rdr;
    int uniqueid = 0;
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




        String username = Convert.ToString(Session["username"]);


        SqlCommand cmd1 = con.CreateCommand();


        cmd1.CommandType = CommandType.Text;



        cmd1.CommandText = "select * from userdata where username='" + username + "'";



        cmd1.ExecuteNonQuery();


        //string check = "select count(*) from userdata where username='" + userid.Text + "'";


        DataTable dt = new DataTable();


        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        da.Fill(dt);

        foreach (DataRow dr in dt.Rows)
        {
            Label4.Text = dr["name"].ToString();

            Label2.Text = "Welcome " + dr["username"].ToString();
            if (dr["userdesc"].ToString() != null)
            {
                Label3.Text = dr["userdesc"].ToString();


            }

            if (dr["userqual"].ToString() == "B.E" || dr["userqual"].ToString() == "B.Tech" || dr["userqual"].ToString() == "Other")
            {
                Label10.Visible = false;
                Label11.Visible = false;
                Label12.Visible = false;
                Label13.Visible = false;


            }
            else
            {

                Label15.Visible = false;
            }

            
            Label5.Text = dr["name"].ToString();
            Label6.Text = dr["username"].ToString();
            Label7.Text = dr["phone"].ToString();
            Label8.Text = dr["userqual"].ToString();
            Label9.Text = dr["useraddr"].ToString();



            if(dr["FileName"].ToString() != string.Empty)
            {

                ProfilePic.Text = "Change My Profile Picture";
 




            }
            else
            {
                ProfilePic.Text = "Upload New Profile Picture";
 

            }

        
            TextBox1.Text = dr["name"].ToString();
            TextBox2.Text = dr["username"].ToString();
            TextBox3.Text = dr["cpass"].ToString();


            uniqueid = Convert.ToInt32(dr["userid"]);

            if (dr["Data"].ToString() != string.Empty) // Check If User Has Profile Picture
            {
                if (Request.QueryString["ImageID"] == null)
                {
                    string strQuery = "select FileName, ContentType, Data from userdata where userid=" + uniqueid + "";
                    SqlCommand cmd = new SqlCommand(strQuery);

                    DataTable dt2 = GetData(cmd);
                    if (dt2 != null)
                    {
                      if(dt2.Rows.Count <= 0)
                      {
                          return;
                      }
                      if (dt2.Rows[0].IsNull("Data"))
                          return;


                      Byte[] bytes = (Byte[])dt2.Rows[0]["Data"];

                      String ContentType = dt2.Rows[0]["ContentType"].ToString();
                      String imageSrc = String.Format("data:{0};base64,{1}", ContentType, Convert.ToBase64String(bytes));


                      Image1.ImageUrl = imageSrc;

                 /*     Response.Buffer = true;
                      Response.Charset = "";
                      Response.Cache.SetCacheability(HttpCacheability.NoCache);
                      Response.ContentType = "image/jpg";
                      Response.BinaryWrite(bytes);
                      Response.End();
                        */
                    //    Image1.DataBinding += bytes;

                      //    Response.ContentType = dt2.Rows[0]["ContentType"].ToString();
                      //  Response.AddHeader("content-disposition", "attachment;filename="
                       // + dt2.Rows[0]["FileName"].ToString());
                       // Response.BinaryWrite(bytes);
                        //Response.Flush();
                        //Response.End();
                    }
                }

                // byte[] bytes = (byte[])GetData("SELECT Data FROM userdata WHERE userid=" + uniqueid).Row[0]["Data"];
                //String base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                //Image1.ImageUrl = "data:image/png:base64," + base64String;

                //  byte[] picture = " "
                Label1.Visible = false;


            }
            else
            {

                Label1.Text = "Profile Picture Not Uploaded!";

            }



        }






        SqlCommand cmd11 = con.CreateCommand();

        cmd11.CommandType = CommandType.Text;












        cmd11.CommandText = "select * from userdata where userid=" + uniqueid + "";


        cmd11.ExecuteNonQuery();

        DataTable dt1 = new DataTable();


        SqlDataAdapter da1 = new SqlDataAdapter(cmd11);
        da.Fill(dt1);

        foreach (DataRow dr1 in dt1.Rows)
        {


          

           
            int secount = A();


            int tecount = A2();
            int becount = A3();
            int fecount = A1();
            int pecount = A5();
            int othercount = OtherProjectsCount();



            //Counting User's Projects Which He Contributed

            int projectsinfe = 0;
            int projectsinse = 0;
            int projectsinte = 0;
            int projectsinbe = 0;
            int pendingproject = 0;
            int otherproject = 0;


            for (int otherid = 1; otherid <= othercount; otherid++)
            {

                SqlCommand other = con.CreateCommand();

               other.CommandType = CommandType.Text;

                other.CommandText = "select * from OtherProjects where projectid=" + otherid + "";


                other.ExecuteNonQuery();

                DataTable otherdt = new DataTable();


                SqlDataAdapter otherda = new SqlDataAdapter(other);
                otherda.Fill(otherdt);



                foreach (DataRow otherdr in otherdt.Rows)
                {


                    if (dr1["username"].ToString() == otherdr["useremail"].ToString() || dr1["name"].ToString() == otherdr["projectowner"].ToString())
                    {
                        ++otherproject;

                    }






                }


            } // END OF Other COUNT












            for (int peid = 1; peid <= pecount; peid++)
            {

                SqlCommand pe = con.CreateCommand();

                pe.CommandType = CommandType.Text;

                pe.CommandText = "select * from PendingProjects where projectid=" + peid + "";


                pe.ExecuteNonQuery();

                DataTable pedt = new DataTable();


                SqlDataAdapter peda = new SqlDataAdapter(pe);
                peda.Fill(pedt);
                


                foreach (DataRow pedr in pedt.Rows)
                {


                    if (dr1["username"].ToString() == pedr["projectowneremail"].ToString() || dr1["name"].ToString() == pedr["projectowner"].ToString())
                    {
                        ++pendingproject;

                    }






                }


            } // END OF Pending COUNT











            for (int seid = 1; seid <= secount; seid++)
            {

                SqlCommand se = con.CreateCommand();

                se.CommandType = CommandType.Text;

                se.CommandText = "select * from SEProjects where projectid=" + seid + "";


                se.ExecuteNonQuery();

                DataTable sedt = new DataTable();


                SqlDataAdapter seda = new SqlDataAdapter(se);
                seda.Fill(sedt);



                foreach (DataRow sedr in sedt.Rows)
                {


                    if (dr1["username"].ToString() == sedr["useremail"].ToString() || dr1["name"].ToString() == sedr["projectowner"].ToString())
                    {
                        ++projectsinse;

                    }






                }


            } // END OF SE COUNT

            for (int teid = 1; teid <= tecount; teid++)
            {

                SqlCommand te = con.CreateCommand();

                te.CommandType = CommandType.Text;


                te.CommandText = "select * from TEProjects where projectid=" + teid + "";


                te.ExecuteNonQuery();

                DataTable tedt = new DataTable();


                SqlDataAdapter teda = new SqlDataAdapter(te);
                teda.Fill(tedt);



                foreach (DataRow tedr in tedt.Rows)
                {


                    if (dr1["username"].ToString() == tedr["useremail"].ToString() || dr1["name"].ToString() == tedr["projectowner"].ToString())
                    {
                        ++projectsinte;

                    }






                }


            }//End of TE COUNTS



            for (int feid = 1; feid <= fecount; feid++)
            {

                SqlCommand fe = con.CreateCommand();

                fe.CommandType = CommandType.Text;


                fe.CommandText = "select * from FEProjects where projectid=" + feid + "";


                fe.ExecuteNonQuery();

                DataTable fedt = new DataTable();


                SqlDataAdapter feda = new SqlDataAdapter(fe);
                feda.Fill(fedt);



                foreach (DataRow fedr in fedt.Rows)
                {


                    if (dr1["username"].ToString() == fedr["useremail"].ToString() || dr1["name"].ToString() == fedr["projectowner"].ToString())
                    {
                        ++projectsinfe;

                    }






                }


            }//End of FE COUNTS



            for (int beid = 1; beid <= becount; beid++)
            {

                SqlCommand be = con.CreateCommand();

                be.CommandType = CommandType.Text;


                be.CommandText = "select * from BEProjects where projectid=" + beid + "";


                be.ExecuteNonQuery();

                DataTable bedt = new DataTable();


                SqlDataAdapter beda = new SqlDataAdapter(be);
                beda.Fill(bedt);



                foreach (DataRow bedr in bedt.Rows)
                {


                    if (dr1["username"].ToString() == bedr["useremail"].ToString() || dr1["name"].ToString() == bedr["projectowner"].ToString())
                    {
                        ++projectsinbe;

                    }






                }


            }//End of BE COUNTS
































        

            FEProjects.Text = projectsinfe.ToString();
            SEProjects.Text = projectsinse.ToString();
            TEProjects.Text = projectsinte.ToString();
            BEProjects.Text = projectsinbe.ToString();

            PEProjects.Text = pendingproject.ToString();
            OtherProjects.Text = otherproject.ToString();






            int totalprogress = projectsinfe + projectsinbe + projectsinse + projectsinte + otherproject;

            if(totalprogress>0)
            {
                int width = (totalprogress * 100) / 10;

                String width1 = Convert.ToString(width);

                progressbar.Style["width"] = width1+"%";



            }
            else
            {
                progressbar.Style["width"] = "5%";

            }
            
 
            

        }


        con.Close();

    }


    public DataTable GetData(SqlCommand cmd)
    {
        
        DataTable dt = new DataTable();
    
      
        SqlDataAdapter sda = new SqlDataAdapter();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
      
            
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            return dt;
       
        
    }






    private DataTable GetData(String query)
    {
        DataTable dt1 = new DataTable();
        SqlConnection  con1 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30");


        using (SqlConnection con11 = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30"))
        {

            using (SqlCommand cmd1 = new SqlCommand(query))
            {
                using (SqlDataAdapter sda1 = new SqlDataAdapter())
                {
                    cmd1.CommandType = CommandType.Text;
                    cmd1.Connection = con11;

                    sda1.SelectCommand = cmd1;
                    sda1.Fill(dt1);

                }
            }
            return dt1;
        }

    
    
    
    }

    protected void Button1_Click(object sender, EventArgs e)//update
    {
        con.Open();

       

     /*   String username = Convert.ToString(Session["username"]);



        SqlCommand cmd1 = con.CreateCommand();


        cmd1.CommandType = CommandType.Text;



        cmd1.CommandText = "select * from userdata where username='" + username + "'";



        cmd1.ExecuteNonQuery();


        //string check = "select count(*) from userdata where username='" + userid.Text + "'";


        DataTable dt = new DataTable();


        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        da.Fill(dt);

        foreach (DataRow dr in dt.Rows)
        {

            uniqueid = Convert.ToInt32(dr["userid"]);



        }
 
        */


       














        
        String name = Name.Text;
        String email = Email.Text;
        String pass1 = Pass.Text;

        String que = "Update userdata set name='" + name + "',username='" + email + "',pass='" + pass1 + "',cpass='" + pass1 + "' where userid=" + uniqueid + "";

        cmd = new SqlCommand(que,con);
        cmd.ExecuteNonQuery();

        Response.Write("<script language='javascript'>window.alert('Your Profile Was Updated!');window.location='userprofile.aspx';</script>");


        con.Close();

    }
    protected void Button2_Click(object sender, EventArgs e)//upload profile pic
    {




        con.Open();
        if (FileUpload1.PostedFile.FileName != string.Empty)
        {
            

        SqlCommand uploadcmd;


        String filePath = FileUpload1.PostedFile.FileName;
        String filename = Path.GetFileName(filePath);
        String ext = Path.GetExtension(filename);
        String contenttype = FileUpload1.PostedFile.ContentType;


        if(ProfilePic.Text == "Change My Profile Picture")
        {


            if (contenttype != String.Empty)
            {


                Stream fs = FileUpload1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);




                //   String que = "
                //insert the file into database

                String strQuery = "Update userdata set ContentType='" + contenttype + "' ,Data=@Data,FileName='" + filename + "' where userid=" + uniqueid + "";

                uploadcmd = new SqlCommand(strQuery, con);
                //   uploadcmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
                // uploadcmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value
                //  = contenttype;
                // uploadcmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;


                uploadcmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;




                uploadcmd.ExecuteNonQuery();



                Response.Write("<script language='javascript'>window.alert('You Profile Picture Was Changed!');window.location='userprofile.aspx';</script>");



            }







        }
        else if(ProfilePic.Text == "Upload New Profile Picture")
        {
            if (contenttype != String.Empty)
            {


                Stream fs = FileUpload1.PostedFile.InputStream;
                BinaryReader br = new BinaryReader(fs);
                Byte[] bytes = br.ReadBytes((Int32)fs.Length);




                //   String que = "
                //insert the file into database

                String strQuery = "Update userdata set ContentType='" + contenttype + "' ,Data=@Data,FileName='" + filename + "' where userid=" + uniqueid + "";

                uploadcmd = new SqlCommand(strQuery, con);
                //   uploadcmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
                // uploadcmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value
                //  = contenttype;
                // uploadcmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;


                uploadcmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;




                uploadcmd.ExecuteNonQuery();


                Response.Write("<script language='javascript'>window.alert('Your New Profile Picture Was Uploaded!');window.location='userprofile.aspx';</script>");




            }



        }
    



        }
        else
        {

            Response.Write("<script language='javascript'>window.alert('You Didn't Upload Profile Picture!');window.location='userprofile.aspx';</script>");

        }



        con.Close();


    }
    protected void Button3_Click(object sender, EventArgs e)//delete account
    {
        con.Open();

        String que = "Delete from userdata where userid=" + uniqueid + "";
        cmd = new SqlCommand(que, con);

        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>window.alert('Your Account Was Deleted!');window.location='logout.aspx';</script>");
 



        con.Close();
     



    }
     public int A()
    {

        String stmt = "SELECT COUNT(*) FROM dbo.SEProjects";
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
    public int A1()
    {

        String stmt = "SELECT COUNT(*) FROM dbo.FEProjects";
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
    public int OtherProjectsCount()
    {

        String stmt = "SELECT COUNT(*) FROM dbo.OtherProjects";
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







    public int A2()
    {

        String stmt = "SELECT COUNT(*) FROM dbo.TEProjects";
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
    public int A3()
    {

        String stmt = "SELECT COUNT(*) FROM dbo.BEProjects";
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
    public int A5()
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




    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}