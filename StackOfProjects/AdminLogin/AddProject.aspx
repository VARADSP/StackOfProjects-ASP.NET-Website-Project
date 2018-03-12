<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="AddProject.aspx.cs" Inherits="SessionCreated_AddProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>


  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css'/>

      <link rel="stylesheet" href="SessionCreated/css/style.css"/>
      <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

      <style type="text/css">
          .auto-style1 {
              width: 92px;
          }

         .uploadbtn{
		background-color: #333;
	color:#fff;
	padding: 10px 15px;
	border:none;

}
.uploadbtn:hover{
	background:red;
	color: #fff;

}
.textbox { 
    -moz-border-radius-topright: 30px;
    -webkit-border-top-right-radius: 30px;
    border-top-right-radius: 30px;
    -moz-border-radius-bottomleft: 30px;
    -webkit-border-bottom-left-radius: 30px;
    border-bottom-left-radius: 30px;
    border: 1px solid #848484;
    outline:0; 
    height:25px; 
    width: 275px; 
    padding-right:15px; 
    padding-left:15px; 
     border: 1px solid #B5C9D4;
    padding: 6px 15px;
    background: #ECF1F4;
    width: 235px;
    font-size: 12px;
    color: #3E7EA0;
    height: 18px;
    text-shadow: 1px 1px 1px rgba(255, 255, 255, 0.4);
    -moz-border-radius: 20px;
    -webkit-border-radius: 20px;
    border-radius: 20px;
    box-shadow: 0px 1px 1px rgba(255, 255, 255, 0.2), 0px 1px 3px rgba(25, 62, 83, 0.1) inset, 0px 0px 0px 8px rgba(155, 180, 195, 0.3);

  } 
.textbox:focus{
    outline:none;
}


      </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div class="wrapper row2">
                   <br /><br />
       <a style="position:relative;left:180px" href="FETable.aspx" class="btn btn-primary">First Year</a>
            <a style="position:relative;left:240px" href="SETable.aspx" class="btn btn-danger">Second Year</a>
            <a style="position:relative;left:370px" href="TETable.aspx" class="btn btn-success">Third Year</a>
            <a style="position:relative;left:480px" href="BETable.aspx" class="btn btn-warning">Final Year</a>
              <a style="position:relative;left:550px" href="OtherProjects.aspx" class="btn btn-warning">Other Projects</a>
            <!-- /. ROW  -->
<br /><br />
    <a href="AddProject.aspx" style="position:relative;left:70px;color:red;" class="btn bg-warning">Add Your Own Project!</a> 
<!--      <a href="projectform.aspx"  class="btn btn-warning" style="color:red;">Update Project</a>
    <a href="projectform.aspx"  class="btn btn-warning" style="color:red;">Delete Project</a>-->

  
    <a href="approveprojects.aspx" style="position:relative;left:180px;color:red;" class="btn btn-warning" >Approve Projects</a>
    <a href="updateprojects.aspx" style="position:relative;left:280px;color:red;" class="btn btn-warning" >Update Pending Projects</a>
    <a href="deleteprojects.aspx" style="position:relative;left:380px;color:red;" class="btn btn-warning" >Delete Pending Projects</a>
  
  
  
          <!-- /. ROW  -->
           <br />
  
    <br />
    <br /><br /><br /><br />
  

        <h2 style="position:relative;left:600px">Add Your Own Project!</h2>
      <p style="position:relative;left:600px" type="Project Name:">Project Name:<asp:TextBox CssClass="textbox" ID="TextBox1" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Write Your Project Name" Width="270px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></p>
    <p style="position:relative;left:300px" type="Project Technology:">Project Technology:<asp:TextBox CssClass="textbox" ID="TextBox2" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Which Technology Is Used In The Project" Width="305px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></p>
 <p style="position:relative;left:900px;bottom:105px" type="Project Owner Name:">Project Owner Name:<asp:TextBox CssClass="textbox" ID="TextBox3" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Write Your Project Owner Names" Width="270px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></p>
      <p style="position:relative;left:300px;bottom:105px" type="Project Owner EmailId:">Project Owner EmailId:<asp:TextBox CssClass="textbox" ID="TextBox4" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Write Your Project Owners EmailId" Width="270px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox4"></asp:RequiredFieldValidator></p>
     <p style="position:relative;left:900px;bottom:195px" type="Project Creation Date">Project Creation Date:<asp:TextBox CssClass="textbox" ID="TextBox5" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Put Your Project Completion Date" Width="270px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox5"></asp:RequiredFieldValidator></p>
   <p style="position:relative;left:300px;bottom:205px" type="Project Description">Project Description:<asp:TextBox ID="TextBox6" CssClass="textbox" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Provide Your Project's Short Description " Height="70px" Width="970px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox6"></asp:RequiredFieldValidator></p>
<p style="position:relative;left:300px;bottom:205px" type="Project Reference Links:">Project Reference Link:<asp:TextBox CssClass="textbox" ID="TextBox7" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Give Your Project Reference Link" Width="970px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox7"></asp:RequiredFieldValidator></p>

      <p style="position:relative;left:300px;bottom:205px" type="Current Year:">Current Year:<asp:TextBox ID="TextBox8" CssClass="textbox" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Give Your Current Year Of Study" Width="270px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox8"></asp:RequiredFieldValidator></p>
        
  <p style="position:relative;left:900px;bottom:305px" type="College Name:">College Name:<asp:TextBox ID="TextBox9" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Give Your College Name" CssClass="textbox" Width="270px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox9"></asp:RequiredFieldValidator></p>
        
<p style="position:relative;left:300px;bottom:305px" type="Address:">Address:<asp:TextBox CssClass="textbox" ID="TextBox10" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Give Your Address" Width="970px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox10"></asp:RequiredFieldValidator></p>
        
            
  

            
               <p style="position:relative;left:300px;bottom:305px" type="fileupload:">Upload Your Project:
                <asp:FileUpload ID="FileUpload1"  style="padding:15px;color:red;border:1px solid #ccc;background-color:black" runat="server" Height="48px" BackColor="#0066FF" BorderColor="#6666FF" CssClass="active" ForeColor="#FF0066" />
                <br />
              
<br />
<asp:Label ID="lblMessage" runat="server" Text=""
Font-Names = "Arial"></asp:Label>
                   <br /></p>

       
    
      <asp:Button ID="Button1" style="position:relative;left:550px;bottom:355px" class="uploadbtn" runat="server" Text="Add Project" OnClick="Button1_Click" Width="359px" />
         
  
        <div>

            <span class="fa fa-envelope-o"></span>Stack Of Projects
 
        </div>
 
</asp:Content>

