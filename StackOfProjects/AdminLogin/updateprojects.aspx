<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="updateprojects.aspx.cs" Inherits="AdminLogin_updateprojects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
           <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>


  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css'/>

      <link rel="stylesheet" href="SessionCreated/css/style.css"/>
      <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

      <style type="text/css">
          .auto-style1 {
              width: 92px;
          }
          .updatebtn{
	background-color: #333;
	color:#fff;
padding: 10px 15px;
	border:none;
}
.updatebtn:hover{
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

     <table class="form">
    
    <form class="form" style="width: 900px; height: 800px">
        
        <tr><h2 style="position:relative;left:600px" >Update Projects !</h2></tr>

        <tr><td><p style="position:relative;left:1210px;bottom:1015px" type="Project Name:">Project ID:<asp:TextBox ID="TextBox11" runat="server" style="padding: 20px" placeholder="Enter Project Id" Width="240px"></asp:TextBox></td></p></tr>
        

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

      <p style="position:relative;left:300px;bottom:205px" type="Current Year:">
          <asp:Label ID="qualification" runat="server" Text="Label">Current Year:</asp:Label><asp:TextBox ID="TextBox8" CssClass="textbox" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Give Your Current Year Of Study" Width="270px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox8"></asp:RequiredFieldValidator></p>
        
  <p style="position:relative;left:900px;bottom:305px" type="College Name:">College Name:<asp:TextBox ID="TextBox9" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Give Your College Name" CssClass="textbox" Width="270px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox9"></asp:RequiredFieldValidator></p>
        
<p style="position:relative;left:300px;bottom:305px" type="Address:">Address:<asp:TextBox CssClass="textbox" ID="TextBox10" runat="server" style="padding: 20px;position:relative;right:20px;top:10px" placeholder="Give Your Address" Width="970px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" style="position:relative;up:20px" runat="server" ErrorMessage="RequiredField" ControlToValidate="TextBox10"></asp:RequiredFieldValidator></p>
        
            
            
  

            
           
       
  
        <tr>
        <td>
            <asp:Button ID="update" style="position:relative;left:1230px;bottom:935px" class="updatebtn" runat="server" Text="Update" Height="35px" OnClick="update_Click" Width="224px" />
            </td>
            <td>
                <asp:Button style="position:relative;left:970px;bottom:1005px" ID="fetch" CausesValidation="false" class="updatebtn" runat="server" Text="Fetch Details" Height="35px" OnClick="fetch_Click" Width="221px" />
            </td>
            </tr>
        </table>
        <div>

            <span class="fa fa-envelope-o"></span>Stack Of Project
 
        </div>
    </form>
   
</asp:Content>

