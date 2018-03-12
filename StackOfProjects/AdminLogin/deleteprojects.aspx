<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="deleteprojects.aspx.cs" Inherits="AdminLogin_deleteprojects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
          <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>


  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css'/>

      <link rel="stylesheet" href="SessionCreated/css/style.css"/>
      <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

      <style type="text/css">
          .auto-style1 {
              width: 92px;
          }
          
.deletebtn{
	background-color: #333;
	color:#fff;
padding: 10px 15px;
	border:none;
}
.deletebtn:hover{
	background:red;
	color: #fff;
}
</style>
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
        
        <tr><h2>Delete Projects !</h2></tr>

        <tr><td><p type="Project Name:">Project ID:<asp:TextBox ID="TextBox11" runat="server" style="width: 500px; height: 30px; padding: 20px" placeholder="Enter Project Id"></asp:TextBox></td></p></tr>
        

        
        <td>
            <asp:Button ID="delete" runat="server" class="deletebtn" Text="Delete" Height="35px" OnClick="delete_Click" Width="135px" style="margin-left:150px;" />&nbsp;&nbsp;</td>
            </tr>
        </table>
        <div>

            <span class="fa fa-envelope-o"></span>Stack Of Project
 
        </div>
    </form>
   <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

