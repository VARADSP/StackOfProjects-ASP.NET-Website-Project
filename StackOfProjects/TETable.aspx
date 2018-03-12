<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TETable.aspx.cs" Inherits="TETable" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="wrapper row2" style="overflow-x:auto" >
  
  
              <a style="position:relative;left:180px" href="FETable.aspx" class="btn btn-primary">First Year</a>
            <a style="position:relative;left:240px" href="SETable.aspx" class="btn btn-danger">Second Year</a>
            <a style="position:relative;left:370px" href="TETable.aspx" class="btn btn-success">Third Year</a>
            <a style="position:relative;left:480px" href="BETable.aspx" class="btn btn-warning">Final Year</a>
              <a style="position:relative;left:550px" href="OtherProjects.aspx" class="btn btn-warning">Other Projects</a>
            <!-- /. ROW  -->
    <br />
    <br /><br /><br /><br /><br />
     <div  style="height:721px; width:1612px; margin-right: 280px;">
         
&nbsp;<!-- /. ROW  --><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="projectid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="368px" Width="1582px" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="projectid" HeaderText="Project ID" ReadOnly="True" SortExpression="projectid" />
            <asp:BoundField DataField="projectname" HeaderText="Project Name" SortExpression="projectname" />
            <asp:BoundField DataField="projecttech" HeaderText="Project Technology" SortExpression="projecttech" />
            <asp:BoundField DataField="projectowner" HeaderText="Project Owner" SortExpression="projectowner" />
            <asp:BoundField DataField="projectdate" HeaderText="Project Date" SortExpression="projectdate" />
            <asp:HyperLinkField DataNavigateUrlFields="viewproject" DataTextField="projectname" HeaderText="View Projects" Text="View" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersConnectionString %>" SelectCommand="SELECT * FROM [TEProjects]"></asp:SqlDataSource>
                 
            </div>
     </div>      
         <!-- /. PAGE WRAPPER  -->
</asp:Content>

