<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="SETable.aspx.cs" Inherits="SETable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper row2" style="overflow-x:auto; height: 974px;">


          <br />
         <a style="position:relative;left:180px" href="FETable.aspx" class="btn btn-primary">First Year</a>
            <a style="position:relative;left:240px" href="SETable.aspx" class="btn btn-danger">Second Year</a>
            <a style="position:relative;left:370px" href="TETable.aspx" class="btn btn-success">Third Year</a>
            <a style="position:relative;left:480px" href="BETable.aspx" class="btn btn-warning">Final Year</a>
              <a style="position:relative;left:550px" href="OtherProjects.aspx" class="btn btn-warning">Other Projects</a>
            <!-- /. ROW  -->
<br />
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
                 
      <div  style="height:750px; width:1547px; overflow-x:scroll">


          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="projectid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" Height="490px" Width="1469px">
              <AlternatingRowStyle BackColor="White" />
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                  <asp:BoundField DataField="projectid" HeaderText="Project Id" ReadOnly="True" SortExpression="projectid" />
                  <asp:BoundField DataField="projectname" HeaderText="Project Name" SortExpression="projectname" />
                  <asp:BoundField DataField="projecttech" HeaderText="Project Technology" SortExpression="projecttech" />
                  <asp:BoundField DataField="projectowner" HeaderText="Project Owner" SortExpression="projectowner" />
                  <asp:BoundField DataField="projectdate" HeaderText="Project Date" SortExpression="projectdate" />
                  <asp:HyperLinkField DataNavigateUrlFields="viewproject" DataTextField="projectname" HeaderText="View Projects" Text="View" />
                  <asp:BoundField DataField="viewproject" HeaderText="ProjectLink" SortExpression="viewproject" />
              </Columns>
              <EditRowStyle BackColor="#7C6F57" />
              <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#E3EAEB" />
              <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#F8FAFA" />
              <SortedAscendingHeaderStyle BackColor="#246B61" />
              <SortedDescendingCellStyle BackColor="#D4DFE1" />
              <SortedDescendingHeaderStyle BackColor="#15524A" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersConnectionString %>" SelectCommand="SELECT * FROM [SEProjects]" DeleteCommand="DELETE FROM [SEProjects] WHERE [projectid] = @projectid" InsertCommand="INSERT INTO [SEProjects] ([projectid], [projectname], [projecttech], [projectowner], [projectdate], [viewproject]) VALUES (@projectid, @projectname, @projecttech, @projectowner, @projectdate, @viewproject)" UpdateCommand="UPDATE [SEProjects] SET [projectname] = @projectname, [projecttech] = @projecttech, [projectowner] = @projectowner, [projectdate] = @projectdate, [viewproject] = @viewproject WHERE [projectid] = @projectid">
              <DeleteParameters>
                  <asp:Parameter Name="projectid" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="projectid" Type="Int32" />
                  <asp:Parameter Name="projectname" Type="String" />
                  <asp:Parameter Name="projecttech" Type="String" />
                  <asp:Parameter Name="projectowner" Type="String" />
                  <asp:Parameter Name="projectdate" Type="String" />
                  <asp:Parameter Name="viewproject" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="projectname" Type="String" />
                  <asp:Parameter Name="projecttech" Type="String" />
                  <asp:Parameter Name="projectowner" Type="String" />
                  <asp:Parameter Name="projectdate" Type="String" />
                  <asp:Parameter Name="viewproject" Type="String" />
                  <asp:Parameter Name="projectid" Type="Int32" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </div>           </div>
                <!-- /. ROW  -->
                


            
           
         <!-- /. PAGE WRAPPER  -->
</asp:Content>

