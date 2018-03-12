<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="OtherProjects.aspx.cs" Inherits="SETable" %>

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
                 
      <div style="height:750px;overflow-x:auto; width:1738px; margin-right: 0px;">


          <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" Width="1445px" DataKeyNames="projectid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="222px">
              <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
              <Columns>
                  <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                  <asp:BoundField DataField="projectid" HeaderText="Project Id" ReadOnly="True" SortExpression="projectid" />
                  <asp:BoundField DataField="projectname" HeaderText="Project Name" SortExpression="projectname" />
                  <asp:BoundField DataField="projecttech" HeaderText="Project Technology" SortExpression="projecttech" />
                  <asp:BoundField DataField="projectowner" HeaderText="Project Owner" SortExpression="projectowner" />
                  <asp:BoundField DataField="userqual" HeaderText="Qualification" SortExpression="userqual" />
                  <asp:BoundField DataField="projectdate" HeaderText="Project Date" SortExpression="projectdate" />
                  <asp:HyperLinkField DataNavigateUrlFields="viewproject" DataTextField="projectname" HeaderText="View Project" Text="View" />
                  <asp:BoundField DataField="viewproject" HeaderText="Project Link" SortExpression="viewproject" />
              </Columns>
              <EditRowStyle BackColor="#999999" />
              <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
              <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
              <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
              <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
              <SortedAscendingCellStyle BackColor="#E9E7E2" />
              <SortedAscendingHeaderStyle BackColor="#506C8C" />
              <SortedDescendingCellStyle BackColor="#FFFDF8" />
              <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
          <br />
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:usersConnectionString %>" DeleteCommand="DELETE FROM [OtherProjects] WHERE [projectid] = @original_projectid AND (([projectname] = @original_projectname) OR ([projectname] IS NULL AND @original_projectname IS NULL)) AND (([projecttech] = @original_projecttech) OR ([projecttech] IS NULL AND @original_projecttech IS NULL)) AND (([projectowner] = @original_projectowner) OR ([projectowner] IS NULL AND @original_projectowner IS NULL)) AND (([projectdate] = @original_projectdate) OR ([projectdate] IS NULL AND @original_projectdate IS NULL)) AND (([viewproject] = @original_viewproject) OR ([viewproject] IS NULL AND @original_viewproject IS NULL)) AND (([useremail] = @original_useremail) OR ([useremail] IS NULL AND @original_useremail IS NULL)) AND (([userqual] = @original_userqual) OR ([userqual] IS NULL AND @original_userqual IS NULL))" InsertCommand="INSERT INTO [OtherProjects] ([projectid], [projectname], [projecttech], [projectowner], [projectdate], [viewproject], [useremail], [userqual]) VALUES (@projectid, @projectname, @projecttech, @projectowner, @projectdate, @viewproject, @useremail, @userqual)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [OtherProjects]" UpdateCommand="UPDATE [OtherProjects] SET [projectname] = @projectname, [projecttech] = @projecttech, [projectowner] = @projectowner, [projectdate] = @projectdate, [viewproject] = @viewproject, [useremail] = @useremail, [userqual] = @userqual WHERE [projectid] = @original_projectid AND (([projectname] = @original_projectname) OR ([projectname] IS NULL AND @original_projectname IS NULL)) AND (([projecttech] = @original_projecttech) OR ([projecttech] IS NULL AND @original_projecttech IS NULL)) AND (([projectowner] = @original_projectowner) OR ([projectowner] IS NULL AND @original_projectowner IS NULL)) AND (([projectdate] = @original_projectdate) OR ([projectdate] IS NULL AND @original_projectdate IS NULL)) AND (([viewproject] = @original_viewproject) OR ([viewproject] IS NULL AND @original_viewproject IS NULL)) AND (([useremail] = @original_useremail) OR ([useremail] IS NULL AND @original_useremail IS NULL)) AND (([userqual] = @original_userqual) OR ([userqual] IS NULL AND @original_userqual IS NULL))">
              <DeleteParameters>
                  <asp:Parameter Name="original_projectid" Type="Int32" />
                  <asp:Parameter Name="original_projectname" Type="String" />
                  <asp:Parameter Name="original_projecttech" Type="String" />
                  <asp:Parameter Name="original_projectowner" Type="String" />
                  <asp:Parameter Name="original_projectdate" Type="String" />
                  <asp:Parameter Name="original_viewproject" Type="String" />
                  <asp:Parameter Name="original_useremail" Type="String" />
                  <asp:Parameter Name="original_userqual" Type="String" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="projectid" Type="Int32" />
                  <asp:Parameter Name="projectname" Type="String" />
                  <asp:Parameter Name="projecttech" Type="String" />
                  <asp:Parameter Name="projectowner" Type="String" />
                  <asp:Parameter Name="projectdate" Type="String" />
                  <asp:Parameter Name="viewproject" Type="String" />
                  <asp:Parameter Name="useremail" Type="String" />
                  <asp:Parameter Name="userqual" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="projectname" Type="String" />
                  <asp:Parameter Name="projecttech" Type="String" />
                  <asp:Parameter Name="projectowner" Type="String" />
                  <asp:Parameter Name="projectdate" Type="String" />
                  <asp:Parameter Name="viewproject" Type="String" />
                  <asp:Parameter Name="useremail" Type="String" />
                  <asp:Parameter Name="userqual" Type="String" />
                  <asp:Parameter Name="original_projectid" Type="Int32" />
                  <asp:Parameter Name="original_projectname" Type="String" />
                  <asp:Parameter Name="original_projecttech" Type="String" />
                  <asp:Parameter Name="original_projectowner" Type="String" />
                  <asp:Parameter Name="original_projectdate" Type="String" />
                  <asp:Parameter Name="original_viewproject" Type="String" />
                  <asp:Parameter Name="original_useremail" Type="String" />
                  <asp:Parameter Name="original_userqual" Type="String" />
              </UpdateParameters>
          </asp:SqlDataSource>
      </div>           </div>
                <!-- /. ROW  -->
                


            
           
         <!-- /. PAGE WRAPPER  -->
</asp:Content>

