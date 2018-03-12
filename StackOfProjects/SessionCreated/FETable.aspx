<%@ Page Title="" Language="C#" MasterPageFile="~/SessionCreated/MasterPage.master" AutoEventWireup="true" CodeFile="FETable.aspx.cs" Inherits="FETable" %>

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


          <asp:GridView ID="GridView1" AutoGenerateColumns="False" runat="server" CellPadding="4" Width="1514px" AllowPaging="True" AllowSorting="True" DataKeyNames="projectid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="399px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:BoundField DataField="projectid" HeaderText="Project Id" ReadOnly="True" SortExpression="projectid" />
                  <asp:BoundField DataField="projectname" HeaderText="Project Name" SortExpression="projectname" />
                  <asp:BoundField DataField="projecttech" HeaderText="Project Technology" SortExpression="projecttech" />
                  <asp:BoundField DataField="projectowner" HeaderText="Project Owner" SortExpression="projectowner" />
                  <asp:BoundField DataField="projectdate" HeaderText="Project Date" SortExpression="projectdate" />
                  <asp:HyperLinkField DataNavigateUrlFields="viewproject" DataTextField="projectname" HeaderText="View Projects" Text="View" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersConnectionString %>" SelectCommand="SELECT * FROM [FEProjects]" DeleteCommand="DELETE FROM [FEProjects] WHERE [projectid] = @projectid" InsertCommand="INSERT INTO [FEProjects] ([projectid], [projectname], [projecttech], [projectowner], [projectdate], [viewproject]) VALUES (@projectid, @projectname, @projecttech, @projectowner, @projectdate, @viewproject)" UpdateCommand="UPDATE [FEProjects] SET [projectname] = @projectname, [projecttech] = @projecttech, [projectowner] = @projectowner, [projectdate] = @projectdate, [viewproject] = @viewproject WHERE [projectid] = @projectid">
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

