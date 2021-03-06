﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="BETable.aspx.cs" Inherits="BETable" %>

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
          <!-- /. ROW  -->
       <br />
    <br /><br /><br /><br /><br />     
     <div  style="height:775px; width:1566px;">
                 
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="projectid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="305px" Width="1504px" AllowPaging="True" AllowSorting="True">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="projectid" HeaderText="Project ID" ReadOnly="True" SortExpression="projectid" />
                 <asp:BoundField DataField="projectname" HeaderText="Project Name" SortExpression="projectname" />
                 <asp:BoundField DataField="projecttech" HeaderText="Project Technology" SortExpression="projecttech" />
                 <asp:BoundField DataField="projectowner" HeaderText="Project Owner" SortExpression="projectowner" />
                 <asp:BoundField DataField="projectdate" HeaderText="Project Date" SortExpression="projectdate" />
                 <asp:HyperLinkField DataNavigateUrlFields="viewproject" DataTextField="projectname" HeaderText="View Project" Text="View" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersConnectionString %>" SelectCommand="SELECT * FROM [BEProjects]"></asp:SqlDataSource>
            </div>
           
         <!-- /. PAGE WRAPPER  -->
            </div>
</asp:Content>

