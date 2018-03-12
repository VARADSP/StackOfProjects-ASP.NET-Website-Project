using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Net;
using System.Net.Mail;
 

public partial class dynamicCreation : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == "Admin")
        {


            Response.Redirect("~/logout.aspx");

        }
        if (Session["username"] == null)
        {


            Response.Redirect("~/logout.aspx");

        }
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            MailMessage Msg = new MailMessage();
            // Sender e-mail address.
            Msg.From = new MailAddress(txtUsername.Text);
            // Recipient e-mail address.
            Msg.To.Add(txtTo.Text);
            Msg.Subject = txtSubject.Text;
            Msg.Body = txtBody.Text;
            // your remote SMTP server IP.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential(txtUsername.Text, txtpwd.Text);
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            Msg = null;
            Page.RegisterStartupScript("UserMsg", "<script>alert('Mail sent thank you...');if(alert){ window.location='SendMail.aspx';}</script>");
        }
        catch (Exception ex)
        {
            Console.WriteLine("{0} Exception caught.", ex);
        }
    }



  /*  public void SendMail()
    {
        MailMessage mail = new MailMessage();
        mail.To.Add(txtTo.Text);

        mail.From = new MailAddress("parlikarvarad@gmail.com");
        mail.Subject = "Email using Gmail";
        string Body = txtmessage.Text;
        mail.Body = Body;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
        smtp.Port = 587;
        smtp.UseDefaultCredentials = false;
        smtp.Credentials = new System.Net.NetworkCredential
        ("", "");

        //Or your Smtp Email ID and Password
        smtp.EnableSsl = true;
        smtp.Send(mail);
    }

   



    protected void Bttn_Send_Click1(object sender, System.EventArgs e)
    {
        SendMail();
    }*/
}