using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class AdminLogin_deleteprojects : System.Web.UI.Page
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
    
    protected void delete_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(TextBox11.Text);


        String que = "Delete from PendingProjects where projectid='" + id + "'";
        cmd = new SqlCommand(que, con);
       
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>window.alert('Your Project Was Deleted!');window.location='projects1.aspx';</script>");
 

    }
    
}


/*
 * public static DataTable GetAFile(int id)
        {
            DataTable file = new DataTable();
            using (SqlConnection connection = new SqlConnection())
            {
                OpenConnection(connection);
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandTimeout = 0;
 
                cmd.CommandText = "SELECT ID, Name, ContentType, Size, Data FROM Files "
                    + "WHERE ID=@ID";
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter adapter = new SqlDataAdapter();
 
                cmd.Parameters.Add("@ID", SqlDbType.Int);
                cmd.Parameters["@ID"].Value = id;
 
                adapter.SelectCommand = cmd;
                adapter.Fill(file);
 
                connection.Close();
            }
 
            return file;
        }
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 *   int id = Convert.ToInt16(Request.QueryString["ID"]);
 
            // Get the file from the database
            DataTable file = FileUtilities.GetAFile(id);
            DataRow row = file.Rows[0];
 
            string name = (string)row["Name"];
            string contentType = (string)row["ContentType"];
            Byte[] data = (Byte[])row["Data"];
 
            // Send the file to the browser
            Response.AddHeader("Content-type", contentType);
            Response.AddHeader("Content-Disposition", "attachment; filename=" + name);
            Response.BinaryWrite(data);
            Response.Flush();
            Response.End();
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 * 
 
 
 */