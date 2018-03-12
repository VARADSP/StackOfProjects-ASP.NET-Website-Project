using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;
namespace generate_page_runtime {
    public partial class CountingWordsInFile : System.Web.UI.Page {
SqlConnection con;
    SqlCommand cmd;
  SqlDataReader rdr;
        protected void Page_Load(object sender, EventArgs e) {
con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\VARAD\Documents\users.mdf;Integrated Security=True;Connect Timeout=30");
     con.Open();
            output.Text = "Project Page";
        }
  protected void downloadClick(object sender, EventArgs e)
 {
if (Session["username"] != null)
{
DataTable file = new DataTable();
   String que = "select FileName,ContentType,Data from PendingProjects where projectid='" + 12 + "'";
  cmd = new SqlCommand(que, con);
 SqlDataAdapter adapter = new SqlDataAdapter();
 adapter.SelectCommand = cmd;
 adapter.Fill(file);
 DataRow row = file.Rows[0];
 if(row["FileName"].ToString()!=String.Empty)
{ // Send the file to the browser
String name = (string)row["FileName"];
 String contentType = (string)row["ContentType"];
 Byte[] data = (Byte[])row["Data"];
// Send the file to the browser
Response.AddHeader("Content-type", contentType);
 Response.AddHeader("Content-Disposition", "attachment; filename=" + name);
  Response.BinaryWrite(data);
 Response.Flush();
 Response.End();
}
else{
    Response.Write("<script language='javascript'>window.alert('No Source Code Available!');window.location='javascript:history.go(-1)';</script>");
}
}
else{
    Response.Write("<script language='javascript'>window.alert('Sign In Required To Get The Code!');window.location='javascript:history.go(-1)';</script>");
}
    }
}
}
