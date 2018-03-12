<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="approveprojects.aspx.cs" Inherits="projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    <style type="text/css">
        .auto-style1 {
            width: 103px;
        }
    </style>
    
    <style>
#overlay {
    position: fixed;
    display: none;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0,0,0,0.5);
    z-index: 2;
    cursor: pointer;
}

#text{
    position: absolute;
    top: 50%;
    left: 50%;
    font-size: 50px;
    color: white;
    transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
}
   .uploadbtn{
		background-color: #ba34cf;
	color:#fff;
	padding: 10px 15px;
	border:none;

}
.uploadbtn:hover{
	background:red;
	color: #fff;

}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="wrapper row2">


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
      <div class="alert" style="position:relative;left:60px;top:30px">           
                <p type="fileupload:">Upload Source Codes</p>
            <asp:TextBox ID="codeid" style="padding:15px;position:relative;right:20px;top:55px;color:red;border:1px solid #ccc;background-color:black" placeHolder="Enter Project ID" runat="server"></asp:TextBox>
              
                <asp:FileUpload ID="FileUpload1"  style="padding:15px;position:relative;left:200px;color:red;border:1px solid #ccc;background-color:black" runat="server" Height="48px" BackColor="#0066FF" BorderColor="#6666FF" CssClass="active" ForeColor="#FF0066" />
                
                
          <asp:Button ID="Button1" style="width:150px;position:relative;padding:15px;bottom:54px;left:480px" class="uploadbtn" runat="server" Text="Upload" Width="359px" OnClick="Button1_Click" />
 </div>

  
    
   <p style="color:red">Total New Projects Count :<asp:Label ID="count" runat="server" Text="Total Projects Count "></asp:Label>
         
     
      <div  style="height:750px; width:1547px;overflow-x:scroll;position:relative;">


                    <asp:GridView ID="GridView1" OnRowCommand="GridView1_RowCommand" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource1"  GridLines="Horizontal" Height="16px" AllowPaging="True" AllowSorting="True" Width="1770px">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="projectid" HeaderText="ProjectID" />
                            <asp:BoundField DataField="projectname" HeaderText="Project Name" SortExpression="projectname" />
                            <asp:BoundField DataField="projecttech" HeaderText="Project Technology" SortExpression="projecttech" />
                            <asp:BoundField DataField="projectowner" HeaderText="Project Owner" SortExpression="projectowner" />
                            <asp:BoundField DataField="projectowneremail" HeaderText="ProjectOwnerEmail" SortExpression="projectowneremail" />
                            <asp:BoundField DataField="projectdate" HeaderText="Project Date" SortExpression="projectdate" />
                            <asp:BoundField DataField="projectdesc" HeaderText="Project Desc" SortExpression="projectdesc" />
                            <asp:BoundField DataField="projectref" HeaderText="Project Ref" SortExpression="projectref" />
                            <asp:BoundField DataField="currentyear" HeaderText="Qualification" SortExpression="currentyear" />
                            <asp:BoundField DataField="collegename" HeaderText="CollegeName" SortExpression="collegename" />
                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />


                            
                            <asp:TemplateField HeaderText="Approve">
                                <ItemTemplate>
                                <div style="text-align:center">


                                
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/assets/img/logo2.png" CommandName="Approve" CommandArgument='<%# Eval("projectname") %>' ToolTip="Approve"/>
                                   
                                </div>
                                    

                                    </ItemTemplate>


                            </asp:TemplateField>

                            
                            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />

                            
                            <asp:BoundField DataField="sourcecodestatus" HeaderText="CodeStatus" SortExpression="sourcecodestatus" />

                            
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#333333" />
                        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#487575" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#275353" />
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:usersConnectionString %>" SelectCommand="SELECT * FROM [PendingProjects]" ></asp:SqlDataSource>


                    </div>           
                <!-- /. ROW  -->
                <hr>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

</asp:Content>

