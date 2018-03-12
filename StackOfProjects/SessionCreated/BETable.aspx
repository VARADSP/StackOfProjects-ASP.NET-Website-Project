<%@ Page Title="" Language="C#" MasterPageFile="~/SessionCreated/MasterPage.master" AutoEventWireup="true" CodeFile="BETable.aspx.cs" Inherits="BETable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper row2" style="overflow-x:auto">


          <br />
     <a style="position:relative;left:180px" href="FETable.aspx" class="btn btn-primary">First Year</a>
            <a style="position:relative;left:240px" href="SETable.aspx" class="btn btn-danger">Second Year</a>
            <a style="position:relative;left:370px" href="TETable.aspx" class="btn btn-success">Third Year</a>
            <a style="position:relative;left:480px" href="BETable.aspx" class="btn btn-warning">Final Year</a>
              <a style="position:relative;left:550px" href="OtherProjects.aspx" class="btn btn-warning">Other Projects</a>
            <!-- /. ROW  -->
<br />
    <a href="AddProject.aspx" style="position:relative;left:570px;color:red;" class="btn bg-warning">Add Your Own Project!</a> 
<!--      <a href="projectform.aspx"  class="btn btn-warning" style="color:red;">Update Project</a>
    <a href="projectform.aspx"  class="btn btn-warning" style="color:red;">Delete Project</a>-->

  
    <br />
    <br /><br /><br /><br /><br />
  <div style="height:750px; width:1547px;overflow-x:scroll; margin-right: 0px;">
                 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="projectid" DataSourceID="SqlDataSource1" Height="332px" Width="1517px" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="projectid" HeaderText="Project ID" ReadOnly="True" SortExpression="projectid" />
            <asp:BoundField DataField="projectname" HeaderText="Project Name" SortExpression="projectname" />
            <asp:BoundField DataField="projecttech" HeaderText="Project Technology" SortExpression="projecttech" />
            <asp:BoundField DataField="projectowner" HeaderText="Project Owner" SortExpression="projectowner" />
            <asp:BoundField DataField="projectdate" HeaderText="Project Date" SortExpression="projectdate" />
            <asp:HyperLinkField DataNavigateUrlFields="viewproject" DataTextField="projectname" HeaderText="View Project" Text="View" />
        </Columns>
       </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersConnectionString %>" SelectCommand="SELECT * FROM [BEProjects]"></asp:SqlDataSource>
            
           </div>
         <!-- /. PAGE WRAPPER  -->

</asp:Content>

