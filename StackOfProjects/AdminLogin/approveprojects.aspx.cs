using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Text.RegularExpressions;
using System.Text;



public partial class projects : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand uploadcmd;
  
    SqlCommand cmd;
    SqlDataReader rdr;

    protected void Page_Load(object sender, EventArgs e)
    {






        if (Session["username"] != "Admin")
        {


            Response.Redirect("~/logout.aspx");

        }


        con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30");
        con.Open();
        int NewOnes = A5();

        count.Text = NewOnes.ToString();


        //Setting Source Code Status
        int pecount = A5();

        //Resettin ID of Pending Projects
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















        for (int peid = 1; peid <= pecount; peid++)
        {

            SqlCommand pe = con.CreateCommand();

            pe.CommandType = CommandType.Text;

            pe.CommandText = "select * from PendingProjects where projectid=" + peid + "";


            pe.ExecuteNonQuery();

            DataTable pedt = new DataTable();


            SqlDataAdapter peda = new SqlDataAdapter(pe);
            peda.Fill(pedt);
            SqlCommand status = con.CreateCommand();

            status.CommandType = CommandType.Text;

           


            foreach (DataRow pedr in pedt.Rows)
            {
                if(pedr["FileName"].ToString() == string.Empty)
                { 

                    status.CommandText = "update PendingProjects set sourcecodestatus = 'Code Not Uploaded!' where projectid=" + peid + "";

                    status.ExecuteNonQuery();

                }
                else
                {
                    status.CommandText = "update PendingProjects set sourcecodestatus = 'Code Uploaded!' where projectid=" + peid + "";

                    status.ExecuteNonQuery();


                }
               




            }


        } // END OF Pending COUNT















       

        for (int id = 1; id <= NewOnes; id++)
        {



            SqlCommand cmd11 = con.CreateCommand();

            cmd11.CommandType = CommandType.Text;


        

        


          




            cmd11.CommandText = "select * from PendingProjects where projectid=" + id + "";


            cmd11.ExecuteNonQuery();

            DataTable dt = new DataTable();


            SqlDataAdapter da = new SqlDataAdapter(cmd11);
            da.Fill(dt);

            foreach (DataRow dr in dt.Rows)
            {
                if (dr["currentyear"].ToString() == "second year" || dr["currentyear"].ToString() == "SE" || dr["currentyear"].ToString() == "Second Year" || dr["currentyear"].ToString() == "SecondYear" || dr["currentyear"].ToString() == "secondyear")
                {

                    SqlCommand status = con.CreateCommand();

                    status.CommandType = CommandType.Text;


                    Boolean flag = false;

                    SqlCommand se = con.CreateCommand();

                    se.CommandType = CommandType.Text;



                    int secount = A();


                    for (int seid = 1; seid <= secount; seid++)
                    {

                       

                        se.CommandText = "select * from SEProjects where projectid=" + seid + "";


                        se.ExecuteNonQuery();

                        DataTable sedt = new DataTable();


                        SqlDataAdapter seda = new SqlDataAdapter(se);
                        seda.Fill(sedt);

                      

                        foreach (DataRow sedr in sedt.Rows)
                        {
                           

                            if(dr["projectname"].ToString() == sedr["projectname"].ToString())
                            {
                                flag = true;

                                status.CommandText = "update PendingProjects set status = 'Approved And In the Tables' where projectname='" + dr["projectname"].ToString() + "'";

                                status.ExecuteNonQuery();
                               

                            }
                        
                            

                                
                            

                        }
 

                    }
                    if (flag == false && dr["status"].ToString() != "New One Not Approved")
                    {

                        status.CommandText = "update PendingProjects set status = 'Approved But Deleted From Tables' where projectname='" + dr["projectname"].ToString() + "'";

                        status.ExecuteNonQuery();
  


                    } 



                }
                else if (dr["currentyear"].ToString() == "third year" || dr["currentyear"].ToString() == "TE" || dr["currentyear"].ToString() == "Third Year" || dr["currentyear"].ToString() == "ThirdYear" || dr["currentyear"].ToString() == "thirdyear")
                {
                    int tecount = A2();
                    Boolean flag = false;

                    SqlCommand te = con.CreateCommand();

                    te.CommandType = CommandType.Text;

                    SqlCommand status = con.CreateCommand();

                    status.CommandType = CommandType.Text;
                   

                    for (int teid = 1; teid <= tecount; teid++)
                    {
                        

                        te.CommandText = "select * from TEProjects where projectid=" + teid + "";

                       

                        te.ExecuteNonQuery();

                        DataTable tedt = new DataTable();


                        SqlDataAdapter teda = new SqlDataAdapter(te);
                        teda.Fill(tedt);


                        foreach (DataRow tedr in tedt.Rows)
                        {
                           


                            if (dr["projectname"].ToString() == tedr["projectname"].ToString())
                            {
                                flag = true;

                               


                                status.CommandText = "update PendingProjects set status = 'Approved And In the Tables' where projectname='" + dr["projectname"].ToString() + "'";

                                status.ExecuteNonQuery();



                            }
                           

                        }










                    }

                    if (flag == false && dr["status"].ToString() != "New One Not Approved")
                    {

                        status.CommandText = "update PendingProjects set status = 'Approved But Deleted From Tables' where projectname='" + dr["projectname"].ToString() + "'";

                        status.ExecuteNonQuery();



                    } 
                 
                }
                else if (dr["currentyear"].ToString() == "first year" || dr["currentyear"].ToString() == "FE" || dr["currentyear"].ToString() == "First Year" || dr["currentyear"].ToString() == "FirstYear" || dr["currentyear"].ToString() == "firstyear")
                {
                    Boolean flag = false;

                    SqlCommand fe = con.CreateCommand();

                    fe.CommandType = CommandType.Text;



                    SqlCommand status = con.CreateCommand();

                    status.CommandType = CommandType.Text;

                    int fecount = A1();

                    for (int feid = 1; feid <= fecount; feid++)
                    {


                        fe.CommandText = "select * from FEProjects where projectid=" + feid + "";


                        fe.ExecuteNonQuery();

                        DataTable fedt = new DataTable();


                        SqlDataAdapter feda = new SqlDataAdapter(fe);
                        feda.Fill(fedt);


                        foreach (DataRow fedr in fedt.Rows)
                        {



                            if (dr["projectname"].ToString() == fedr["projectname"].ToString())
                            {
                                flag = true;

                                status.CommandText = "update PendingProjects set status = 'Approved And In the Tables' where projectname='" + dr["projectname"].ToString() + "'";

                                status.ExecuteNonQuery();




                            }
                            

                        }







                    }
                    if (flag == false && dr["status"].ToString() != "New One Not Approved")
                    {

                        status.CommandText = "update PendingProjects set status = 'Approved But Deleted From Tables' where projectname='" + dr["projectname"].ToString() + "'";

                        status.ExecuteNonQuery();



                    } 

                }
                else if (dr["currentyear"].ToString() == "final year" || dr["currentyear"].ToString() == "BE" || dr["currentyear"].ToString() == "Final Year" || dr["currentyear"].ToString() == "FinalYear" || dr["currentyear"].ToString() == "finalyear" || dr["currentyear"].ToString() == "fourthyear" || dr["currentyear"].ToString() == "FourthYear" || dr["currentyear"].ToString() == "Fourth Year" || dr["currentyear"].ToString() == "fourth year" || dr["currentyear"].ToString() == "fourth Year" || dr["currentyear"].ToString() == "Fourth year")
                {
                    Boolean flag = false;

                    int becount = A3();

                    SqlCommand be = con.CreateCommand();

                    be.CommandType = CommandType.Text;

                    SqlCommand status = con.CreateCommand();

                    status.CommandType = CommandType.Text;


                    for (int beid = 1; beid <= becount; beid++)
                    {

                        
          

                        be.CommandText = "select * from BEProjects where projectid=" + beid + "";


                        be.ExecuteNonQuery();

                        DataTable bedt = new DataTable();


                        SqlDataAdapter beda = new SqlDataAdapter(be);
                        beda.Fill(bedt);


                        foreach (DataRow bedr in bedt.Rows)
                        {

                           


                            if (dr["projectname"].ToString() == bedr["projectname"].ToString())
                            {
                                flag = true;

                                status.CommandText = "update PendingProjects set status = 'Approved And In the Tables' where projectname='" + dr["projectname"].ToString() + "'";

                                status.ExecuteNonQuery();





                            }
                            

                        }















                    }

                    if (flag == false && dr["status"].ToString() != "New One Not Approved")
                    {

                        status.CommandText = "update PendingProjects set status = 'Approved But Deleted From Tables' where projectname='" + dr["projectname"].ToString() + "'";

                        status.ExecuteNonQuery();



                    } 
                 
                }
                else 
                {
                    Boolean flag = false;

                    int others = OtherCount();

                    SqlCommand other = con.CreateCommand();

                    other.CommandType = CommandType.Text;

                    SqlCommand status = con.CreateCommand();

                    status.CommandType = CommandType.Text;


                    for (int otherid = 1; otherid <= others; otherid++)
                    {




                        other.CommandText = "select * from OtherProjects where projectid=" + otherid + "";


                        other.ExecuteNonQuery();

                        DataTable otherdt = new DataTable();


                        SqlDataAdapter otherda = new SqlDataAdapter(other);
                        otherda.Fill(otherdt);


                        foreach (DataRow otherdr in otherdt.Rows)
                        {




                            if (dr["projectname"].ToString() == otherdr["projectname"].ToString())
                            {
                                flag = true;

                                status.CommandText = "update PendingProjects set status = 'Approved And In the Tables' where projectname='" + dr["projectname"].ToString() + "'";

                                status.ExecuteNonQuery();





                            }


                        }















                    }

                    if (flag == false && dr["status"].ToString() != "New One Not Approved")
                    {

                        status.CommandText = "update PendingProjects set status = 'Approved But Deleted From Tables' where projectname='" + dr["projectname"].ToString() + "'";

                        status.ExecuteNonQuery();



                    }

                }



            }








        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e, GridViewCommandEventArgs e1)
    {


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
    public int OtherCount()
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
    
   

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Approve")
        {
            String desc = "null";
            String owners = "null";
            String email = "null";
            String ref1 = "null";
            String sourcecode = "null";

            String date = "null";
            String tech = "null";
            String year = "null";

            String addr = "null";




            String path = "/DefaultProjects/";

            String name1 = Convert.ToString(e.CommandArgument).Trim()   ;






            

            
            
            
            
           
            int totalrowsSE = A();
            int totalrowsFE = A1();
            int totalrowsTE = A2();
            int totalrowsBE = A3();
            int totalrowsNew = A5();
            int totalrowsOther = OtherCount();
           
            
            ++totalrowsSE;
            ++totalrowsFE;
            ++totalrowsTE;
            ++totalrowsBE;
            ++totalrowsNew;
            ++totalrowsOther;


            //       String que = "insert into PendingProjects values('" + name + "','" + tech + "','" + owner + "','" + email + "','" + date + "','" + desc + "','" + refe + "','" + year + "','" + clgname + "','" + address + "')";
            //     cmd = new SqlCommand(que, con);
            //   con.Open();
            //         cmd.ExecuteNonQuery();
            // con.Close();








            SqlCommand cmd1 = con.CreateCommand();
         //   SqlCommand cmd2 = con.CreateCommand();


            cmd1.CommandType = CommandType.Text;

          //  cmd2.CommandType = CommandType.Text;


            cmd1.CommandText = "select * from PendingProjects where projectname='" + name1 + "'";

         //   cmd2.CommandText = "update PendingProjects set status = 'Approved' where projectname='" + name1 + "'";

            

            cmd1.ExecuteNonQuery();

          int idfordownload = 0;



            
            //string check = "select count(*) from userdata where username='" + userid.Text + "'";


            DataTable dt = new DataTable();


            SqlDataAdapter da = new SqlDataAdapter(cmd1);
            da.Fill(dt);



            foreach (DataRow dr in dt.Rows)
            {
                idfordownload = Convert.ToInt32(dr["projectid"].ToString());


                if (dr["status"].ToString() == "New One Not Approved" || dr["status"].ToString() == "Approved But Deleted From Tables")
                {

                    if (dr["currentyear"].ToString() == "second year" || dr["currentyear"].ToString() == "SE" || dr["currentyear"].ToString() == "Second Year" || dr["currentyear"].ToString() == "SecondYear" || dr["currentyear"].ToString() == "secondyear")
                    {
                        //Reseting the id of projects

                                    SqlCommand loop = con.CreateCommand();
                                    loop.CommandType = CommandType.Text;
                                    loop.CommandText = "select * from SEProjects";
                                    loop.ExecuteNonQuery();
                                    DataTable loopdt = new DataTable();


                                    SqlDataAdapter loopda = new SqlDataAdapter(loop);
                                    loopda.Fill(loopdt);
                                    int loopcount=1;
                                    foreach (DataRow loopdr in loopdt.Rows)
                                    {
                                        String loopque = "update SEProjects set projectid=" + loopcount++ +" where projectname='"+loopdr["projectname"].ToString()+"'";
                                        loop = new SqlCommand(loopque, con);
                                        loop.ExecuteNonQuery();


                                    }
                                    




                        
                        desc = dr["projectdesc"].ToString();
                        email = dr["projectowneremail"].ToString();
                        addr = dr["address"].ToString();
                        date=dr["projectdate"].ToString();
                        tech = dr["projecttech"].ToString();
                        year = dr["currentyear"].ToString();
                        ref1 = dr["projectref"].ToString();
                        owners=dr["projectowner"].ToString();


                        path = "/SEProjects/";

                        String que = "insert into SEProjects values(" + totalrowsSE + ",'" + dr["projectname"] + "','" + dr["projecttech"] + "','" + dr["projectowner"] + "','" + dr["projectdate"] + "','" + path + name1.Trim() + ".aspx" + "','" + dr["projectowneremail"] + "')";

                        cmd = new SqlCommand(que, con);
                        cmd.ExecuteNonQuery();
                    }
                    else if (dr["currentyear"].ToString() == "third year" || dr["currentyear"].ToString() == "TE" || dr["currentyear"].ToString() == "Third Year" || dr["currentyear"].ToString() == "ThirdYear" || dr["currentyear"].ToString() == "thirdyear")
                    {
                        //Reseting the id of projects
                        SqlCommand loop = con.CreateCommand();
                        loop.CommandType = CommandType.Text;
                        loop.CommandText = "select * from TEProjects";
                        loop.ExecuteNonQuery();
                        DataTable loopdt = new DataTable();


                        SqlDataAdapter loopda = new SqlDataAdapter(loop);
                        loopda.Fill(loopdt);
                        int loopcount = 1;
                        foreach (DataRow loopdr in loopdt.Rows)
                        {
                            String loopque = "update TEProjects set projectid=" + loopcount++ + " where projectname='" + loopdr["projectname"].ToString() + "'";
                            loop = new SqlCommand(loopque, con);
                            loop.ExecuteNonQuery();


                        }
                                   





                        desc = dr["projectdesc"].ToString();
                        email = dr["projectowneremail"].ToString();
                        addr = dr["address"].ToString();
                        date = dr["projectdate"].ToString();
                        tech = dr["projecttech"].ToString();
                        year = dr["currentyear"].ToString();
                        ref1 = dr["projectref"].ToString();
                        owners = dr["projectowner"].ToString();


                        path = "/TEProjects/";

                        String que = "insert into TEProjects values(" + totalrowsTE + ",'" + dr["projectname"] + "','" + dr["projecttech"] + "','" + dr["projectowner"] + "','" + dr["projectdate"] + "','" + path + name1.Trim() + ".aspx" + "','" + dr["projectowneremail"] + "')";

                        cmd = new SqlCommand(que, con);
                        cmd.ExecuteNonQuery();
                    }
                    else if (dr["currentyear"].ToString() == "first year" || dr["currentyear"].ToString() == "FE" || dr["currentyear"].ToString() == "First Year" || dr["currentyear"].ToString() == "FirstYear" || dr["currentyear"].ToString() == "firstyear")
                    {
                        //Reseting the id of projects
                        SqlCommand loop = con.CreateCommand();
                        loop.CommandType = CommandType.Text;
                        loop.CommandText = "select * from FEProjects";
                        loop.ExecuteNonQuery();
                        DataTable loopdt = new DataTable();


                        SqlDataAdapter loopda = new SqlDataAdapter(loop);
                        loopda.Fill(loopdt);
                        int loopcount = 1;
                        foreach (DataRow loopdr in loopdt.Rows)
                        {
                            String loopque = "update FEProjects set projectid=" + loopcount++ + " where projectname='" + loopdr["projectname"].ToString() + "'";
                            loop = new SqlCommand(loopque, con);
                            loop.ExecuteNonQuery();


                        }
                                   





                        desc = dr["projectdesc"].ToString();
                        email = dr["projectowneremail"].ToString();
                        addr = dr["address"].ToString();
                        date = dr["projectdate"].ToString();
                        tech = dr["projecttech"].ToString();
                        year = dr["currentyear"].ToString();
                        ref1 = dr["projectref"].ToString();
                        owners = dr["projectowner"].ToString();




                        path = "/FEProjects/";


                        String que = "insert into FEProjects values(" + totalrowsFE + ",'" + dr["projectname"] + "','" + dr["projecttech"] + "','" + dr["projectowner"] + "','" + dr["projectdate"] + "','" + path + name1.Trim() + ".aspx" + "','" + dr["projectowneremail"] + "')";

                        cmd = new SqlCommand(que, con);
                        cmd.ExecuteNonQuery();
                    }
                    else if (dr["currentyear"].ToString() == "final year" || dr["currentyear"].ToString() == "BE" || dr["currentyear"].ToString() == "Final Year" || dr["currentyear"].ToString() == "FinalYear" || dr["currentyear"].ToString() == "finalyear" || dr["currentyear"].ToString() == "fourthyear" || dr["currentyear"].ToString() == "FourthYear" || dr["currentyear"].ToString() == "Fourth Year" || dr["currentyear"].ToString() == "fourth year" || dr["currentyear"].ToString() == "fourth Year" || dr["currentyear"].ToString() == "Fourth year")
                    {
                        //Reseting the id of projects
                        SqlCommand loop = con.CreateCommand();
                        loop.CommandType = CommandType.Text;
                        loop.CommandText = "select * from BEProjects";
                        loop.ExecuteNonQuery();
                        DataTable loopdt = new DataTable();


                        SqlDataAdapter loopda = new SqlDataAdapter(loop);
                        loopda.Fill(loopdt);
                        int loopcount = 1;
                        foreach (DataRow loopdr in loopdt.Rows)
                        {
                            String loopque = "update BEProjects set projectid=" + loopcount++ + " where projectname='" + loopdr["projectname"].ToString() + "'";
                            loop = new SqlCommand(loopque, con);
                            loop.ExecuteNonQuery();


                        }
                                   







                        desc = dr["projectdesc"].ToString();
                        email = dr["projectowneremail"].ToString();
                        addr = dr["address"].ToString();
                        date = dr["projectdate"].ToString();
                        tech = dr["projecttech"].ToString();
                        year = dr["currentyear"].ToString();
                        ref1 = dr["projectref"].ToString();
                        owners = dr["projectowner"].ToString();




                        path = "/BEProjects/";


                        String que = "insert into BEProjects values(" + totalrowsBE + ",'" + dr["projectname"] + "','" + dr["projecttech"] + "','" + dr["projectowner"] + "','" + dr["projectdate"] + "','" + path + name1.Trim() + ".aspx" + "','" + dr["projectowneremail"] + "')";

                        cmd = new SqlCommand(que, con);
                        cmd.ExecuteNonQuery();
                    }
                    else 
                    {
                        //Reseting the id of projects

                        SqlCommand loop = con.CreateCommand();
                        loop.CommandType = CommandType.Text;
                        loop.CommandText = "select * from OtherProjects";
                        loop.ExecuteNonQuery();
                        DataTable loopdt = new DataTable();


                        SqlDataAdapter loopda = new SqlDataAdapter(loop);
                        loopda.Fill(loopdt);
                        int loopcount = 1;
                        foreach (DataRow loopdr in loopdt.Rows)
                        {
                            String loopque = "update OtherProjects set projectid=" + loopcount++ + " where projectname='" + loopdr["projectname"].ToString() + "'";
                            loop = new SqlCommand(loopque, con);
                            loop.ExecuteNonQuery();


                        }








                        desc = dr["projectdesc"].ToString();
                        email = dr["projectowneremail"].ToString();
                        addr = dr["address"].ToString();
                        date = dr["projectdate"].ToString();
                        tech = dr["projecttech"].ToString();
                        year = dr["currentyear"].ToString();
                        ref1 = dr["projectref"].ToString();
                        owners = dr["projectowner"].ToString();




                        path = "/OtherProjects/";


                        String que = "insert into OtherProjects values(" + totalrowsOther + ",'" + dr["projectname"] + "','" + dr["projecttech"] + "','" + dr["projectowner"] + "','" + dr["projectdate"] + "','" + path + name1.Trim() + ".aspx" + "','" + dr["projectowneremail"] + "','" + dr["currentyear"] + "')";

                        cmd = new SqlCommand(que, con);
                        cmd.ExecuteNonQuery();
                    }

             //       cmd2.ExecuteNonQuery();


                    Response.Write("<script language='javascript'>window.alert('Your Project Is Submited!');window.location='projects1.aspx';</script>");

                }





                else
                {

                    Response.Write("<script language='javascript'>window.alert('Project is already in the tables!');window.location='approveprojects.aspx';</script>");


                }

            }

            


            string[] aspxLines = {"<%@ Page Language=\"C#\" AutoEventWireup=\"true\"CodeFile=\""+name1.Trim()+".aspx.cs\" Inherits=\"generate_page_runtime."+name1.Trim()+"\" %>",
"<!DOCTYPE html>",
"<head>",
"<title>"+name1+"</title>",
"<link rel=\"stylesheet\" href=\"styles.css\" type=\"text/css\" />",
" <script type=\"text/javascript\" src=\"js/jquery-1.2.6.min.js\"></script>",
" <script type=\"text/javascript\" src=\"js/jquery.flow.1.2.js\"></script>",
" <script type=\"text/javascript\" src=\"js/jquery.cycle.js\"></script>",
" <script type=\"text/javascript\" src=\"js/custom.js\"></script>",
"<style>",
 ".downloadbtn{",
	"	background-color: #abc;",
"	color:#fff;",
	"padding: 10px 15px;",
"	border:none;",

"}",
".downloadbtn:hover{",
"	background:red;",
"	color: #fff;",

"}",
"</style>",

"</head>",
"<body>",
"   <form id=\"form1\" runat=\"server\">",
"       <div id=\"wrap\">",
"       <div id=\"header\">",
                    "	<h1><a href=\"#\">Project Information<span></span></a></h1>",
" <a href=\"javascript:history.go(-1)\" style=\"display:block;width:115px;height:25px;background:#4E9CAF;padding:10px;text-align:center;border-radius:5px;color:white;font-weight:bold;float:right;\">Back To Main Page</a>",
"	<div class=\"clear\"></div></div>",

"<div id=\"page-title\">",
"	<div id=\"slides-container\">",

"		<div id=\"slides\">",
"			<div>",


"				<div class=\"slide-image\"><img src=\"PROJECT-C.png\" alt=\"Slide #1 image\" /></div>",
"				<div class=\"slide-text\">",
"					<h2>Project Details</h2>",
"<p>"+desc+"</p> <p> Technology Used "+tech+"</p>",

"				</div>",
"			</div>",

"			<div><div class=\"slide-image\"><img src=\"hqdefault.jpg\" alt=\"Slide #2 image\" /></div>",
"							<div class=\"slide-text\">",
"<h2></h2>",
"<p></p></div></div>	",
"		<div><div class=\"slide-image\"><img src=\"images/slide-3.png\" alt=\"Slide #3 image\" /></div><div class=\"slide-text\">	",
"	<h2></h2>	<p></p></div></div></div>",
"	<div class=\"controls\"><span class=\"jFlowNext\"><span>Next</span></span><span class=\"jFlowPrev\"><span>Prev</span></span></div>		",

"		<div id=\"myController\" class=\"hidden\"><span class=\"jFlowControl\"></span><span class=\"jFlowControl\"></span><span class=\"jFlowControl\"></span></div>",
"	</div>",

"	<div class=\"clear\"></div>",
"</div>",



"<div id=\"content\"><!-- left hand main content --><div id=\"page\">",
"		<h2>About The Student Report On Project</h2>",
"		<p>This program is designed in the following technology"+tech+" and the program is designed for the following purpose "+desc+" ",



"<pre>",


"</pre>",
" <br /><br /><br /><br /><br />",
//" <a href=\""+ref1+"\" style=\"width:115px;height:25px;background:#4E2DFF;padding:30px;position:relative;right:260px;border-radius:15px;color:Red;font-weight:bold;float:right;\">Download Source Code</a>",
"<asp:Button runat=\"server\" class=\"downloadbtn\" Text=\"Download Project\" onclick=\"downloadClick\"/>",
"	</div>",
"	<div id=\"sidebar\">",
"		<h3>Current <strong>Owners</strong></h3>",
"		<ul class=\"clientlist\">",
	"		<li><a href=\"#\"><h2>"+owners+"</h2></a></li>",
    "			<li><a href=\"gmail.com?email="+email+"\"><h2>"+email+"</h2></a></li>",
    "			<li><a href=\"#\"></a></li><li><a href=\"#\"></a></li>",
    "		</ul><br class=\"clear\" />",
    "		<h3>Related <strong>websites</strong></h3>",

    "		<ul>",
    "			<li><a href=\"#\"><h3>"+ref1+"</h3></a></li>",
    "			<li><a href=\"github.com\"><h3>Github For Code</h3></a></li>",
    "		</ul>",

    "	</div>",
    "	<div class=\"clear\"></div>",
    "</div>",
    "<div class=\"footer\">",
    "	<p>&copy; 2017 SOP <a href=\"\">Function</a> and <a href=\"\">Stack Of Projects</a><br /><a href=\"\" title=\"valid XHTML\">XHTML</a> | <a href=\"http://jigsaw.w3.org/css-validator/check/referer\" title=\"valid CSS\">CSS</a></p>",
    "</div>",
    "</div>",


    "	</div>",

    "    <div>",
    


"           <asp:literal id=\"output\" runat=\"server\"/>",
"       </div>",
"   </form>",
"</body>",
"</html>"};
            string[] csLines = {"using System;",
                                   "using System.Collections.Generic;",
"using System.Linq;",
"using System.Web;",
"using System.Web.UI;",
"using System.Data.SqlClient;",
"using System.Data;",
"using System.Web.UI.WebControls;",
"namespace generate_page_runtime {",
"    public partial class "+name1.Trim()+" : System.Web.UI.Page {",
"SqlConnection con;",

"    SqlCommand cmd;",
  "  SqlDataReader rdr;",

"        protected void Page_Load(object sender, EventArgs e) {",

"con = new SqlConnection(@\"Data Source=(LocalDB)\\v11.0;AttachDbFilename=C:\\Users\\VARAD\\Documents\\users.mdf;Integrated Security=True;Connect Timeout=30\");",
   "     con.Open();",
   
"            output.Text = \"Project Page\";",
"        }",
"  protected void downloadClick(object sender, EventArgs e)",
   " {",
   "if (Session[\"username\"] != null)",
   "{",
   "DataTable file = new DataTable();",
   "   String que = \"select FileName,ContentType,Data from PendingProjects where projectid='\" + "+idfordownload +" + \"'\";",
   "  cmd = new SqlCommand(que, con);",
   " SqlDataAdapter adapter = new SqlDataAdapter();",
   " adapter.SelectCommand = cmd;",
   " adapter.Fill(file);",
   " DataRow row = file.Rows[0];",
   " if(row[\"FileName\"].ToString()!=String.Empty)",
      "{ // Send the file to the browser",
   "String name = (string)row[\"FileName\"];",
   " String contentType = (string)row[\"ContentType\"];",
   " Byte[] data = (Byte[])row[\"Data\"];",

   "// Send the file to the browser",
   "Response.AddHeader(\"Content-type\", contentType);",
   " Response.AddHeader(\"Content-Disposition\", \"attachment; filename=\" + name);",
   "  Response.BinaryWrite(data);",
   " Response.Flush();",
   " Response.End();",
   "}",
   "else{",
   "    Response.Write(\"<script language='javascript'>window.alert('No Source Code Available!');window.location='javascript:history.go(-1)';</script>\");",
   "}",

   "}",
   "else{",
   "    Response.Write(\"<script language='javascript'>window.alert('Sign In Required To Get The Code!');window.location='javascript:history.go(-1)';</script>\");",
   "}",
"    }",
"}",
"}"};
            File.WriteAllLines(Server.MapPath(path + name1.Trim() + ".aspx"), aspxLines);
            File.WriteAllLines(Server.MapPath(path + name1.Trim() + ".aspx.cs"), csLines);











            con.Close();





            // similarly u can get all the values of the row..
            // u can do ur stuff here...
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if(codeid.Text != string.Empty)
        { 

        String filePath = FileUpload1.PostedFile.FileName;
        String filename = Path.GetFileName(filePath);
        String ext = Path.GetExtension(filename);
        String contenttype = FileUpload1.PostedFile.ContentType;




        if (contenttype != String.Empty)
        {


            int sourceid = Convert.ToInt32(codeid.Text);



            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);




            //   String que = "
            //insert the file into database
            String strQuery = "Update PendingProjects set ContentType='" + contenttype + "' ,Data=@Data,FileName='" + filename + "' where projectid=" + sourceid + "";

            uploadcmd = new SqlCommand(strQuery, con);
            //   uploadcmd.Parameters.Add("@Name", SqlDbType.VarChar).Value = filename;
            // uploadcmd.Parameters.Add("@ContentType", SqlDbType.VarChar).Value
            //  = contenttype;
            // uploadcmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;


            uploadcmd.Parameters.Add("@Data", SqlDbType.Binary).Value = bytes;


            try
            {
                uploadcmd.ExecuteNonQuery();

                Response.Write("<script language='javascript'>window.alert('Code Uploaded Successfully!');window.location='approveprojects.aspx';</script>");

            }
            catch(Exception)
            {
                Response.Write("<script language='javascript'>window.alert('Something Went Wrong!');window.location='approveprojects.aspx';</script>");

            }

            




            
        }

        }
        else
        {
            Response.Write("<script language='javascript'>window.alert('Provide Id For Source Code Uploading!');window.location='approveprojects.aspx';</script>");

        }


    }
}