<%@ Page Title="" Language="C#" MasterPageFile="~/SessionCreated/MasterPage.master" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
  
     
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     
   <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
    
       <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Label1"></asp:Label>
                       
                            <p class="help-block">
                                <asp:Image ID="Image1" style="height:200px;width:250px;position:relative;bottom:90px" runat="server" />
                                
                                <asp:Label ID="Label4" runat="server" style="position:relative;top:50px;right:200px" Text="Label4"></asp:Label></p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4">

                        <asp:Label ID="Label2" runat="server" Text="Label2"></asp:Label>
                                   </div>
                    <div class="col-lg-4 col-md-4">

                        <p>Brief About You:</p><br />
                        <asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
                               </div>
                </div>
                <hr>
    
    
    
     
          <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <h5>User Details</h5>
                       <div class="input-group">
 
  Name :<asp:TextBox ID="TextBox1" style="background-color:black;color:red;" class="form-control" runat="server" ReadOnly ></asp:TextBox>
</div>
                      <div class="input-group">
                          New Name:
                          <asp:TextBox ID="Name" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredField" ControlToValidate="Name"></asp:RequiredFieldValidator>

                            </div>
<br />
<div class="input-group">
  Email :<asp:TextBox ID="TextBox2" style="background-color:black;color:red;" runat="server" class="form-control" ReadOnly></asp:TextBox>
 
</div>
                       <div class="input-group">
                           New EmailId:
                           <asp:TextBox ID="Email" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredField" ClientIDMode="Inherit" ControlToValidate="Email"></asp:RequiredFieldValidator>

                            </div>
<br />
<div class="input-group">
  
  Password :<asp:TextBox ID="TextBox3" style="background-color:black;color:red;" runat="server" class="form-control" ReadOnly></asp:TextBox>
 
</div>
                        <div class="input-group">
                            New Pass:
                            <asp:TextBox ID="Pass" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredField" ControlToValidate="Pass"></asp:RequiredFieldValidator>


                            </div>
                    </div>

                    <div class="col-lg-6 col-md-6">
                        <h5>Account</h5>
                        <asp:Button ID="Update" class="btn btn-default" runat="server" Text="Update Profile" OnClick="Button1_Click" />

                        <asp:Button ID="ProfilePic" CausesValidation="false" class="btn btn-primary" runat="server" Text="Upload New Photo" OnClick="Button2_Click" />
                        <asp:Button ID="RemoveAc" CausesValidation="false" class="btn btn-danger" runat="server" Text="Remove My Account" OnClick="Button3_Click" />
                   
                        <br>
                        <br>

                            <p type="fileupload:">Upload Your Profile Picture:</p>
                <asp:FileUpload ID="FileUpload1"  style="padding:15px;color:red;border:1px solid #ccc;background-color:black" runat="server" Height="48px" BackColor="#0066FF" BorderColor="#6666FF" CssClass="active" ForeColor="#FF0066" />
                <br />
         


                        <h5>User Progress</h5>
                      
                        <div class="progress progress-striped active">
                            <div class="progress-bar" id="progressbar"  runat="server" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                <span class="sr-only">20% Complete</span>
                            </div>
                        </div>
                        <asp:Label ID="Label10" runat="server" Text="Label"><p style="background-color:black;color:red;padding:15px;"> Total Projects In First Year :   <asp:Label ID="FEProjects" runat="server" Text="Label"></asp:Label></p><br /></asp:Label>
                        <asp:Label ID="Label11" runat="server" Text="Label"> <p style="background-color:black;color:red;padding:15px;">   Total Projects In Second Year :  <asp:Label ID="SEProjects" runat="server" Text="Label"></asp:Label></p><br /></asp:Label>     
                        <asp:Label ID="Label12" runat="server" Text="Label"><p style="background-color:black;color:red;padding:15px;">  Total Projects In Third Year :   <asp:Label ID="TEProjects" runat="server" Text="Label"></asp:Label></p><br /></asp:Label>     
                        <asp:Label ID="Label13" runat="server" Text="Label"><p style="background-color:black;color:red;padding:15px;">     Total Projects In Final Year :   <asp:Label ID="BEProjects" runat="server" Text="Label"></asp:Label></p><br /></asp:Label>
                            <asp:Label ID="Label15" runat="server" Text="Label"><p style="background-color:black;color:red;padding:15px;">  Total Projects In Other Projects : <asp:Label ID="OtherProjects" runat="server" Text="Label"></asp:Label> </asp:Label>   
                        <asp:Label ID="Label14" runat="server" Text="Label"><p style="background-color:black;color:red;padding:15px;">     Total Projects Under Review :   <asp:Label ID="PEProjects" runat="server" Text="Label"></asp:Label></p><br /></asp:Label>
                    


                    </div>

                </div>
                <!-- /. ROW  -->
                <hr>
             
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <h5>Information About You</h5>
                        <table class="table table-striped table-bordered table-hover" style="height:150px;width:1400px;color:blue;">
                            <thead>
                                <tr>
                                    
                                    <th>Name</th>
                                    <th>Username</th>
                                    <th>Phone</th>
                                    <th>Qualification</th>
                                    <th>Address</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                                </tr>

                                
                               
                                

                            </tbody>
                        </table>

                    </div>
                   
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr>


                <div class="row">
                    
                        <video poster="images/stack-sponsor.jpg" style="position:relative;left:220px" width="900px" height="350px" controls>
                            <source src="videos/FUN Google AI Projects - You Can Try !.mp4" />

                        </video>

                    
                    
                <!-- /. ROW  -->
                <hr />
                  <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <h5>Information</h5>
                            This is type of profile page where your basic information is displayed and your progress is shown . For increasing your progress on our website,upload your projects and if we like it we will approve your projects.Have Fun! <a href="http://getbootstrap.com" target="_blank">StackOFProjects.com</a>
                        . And if you want full information about This Website And Administrators <a href="http://www.binarytheme.com/bootstrap-free-admin-dashboard-template/" target="_blank">ADMIN PROFILE </a>&nbsp;,&nbsp;  <a href="http://www.binarytheme.com/free-bootstrap-admin-template-siminta/" target="_blank">Website Details</a> and <a href="http://binarycart.com/" target="_blank">Contact Admin</a>.

                    </div>
                </div>
                <!-- /. ROW  -->

            </div>
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
   


     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>










  
</asp:Content>

