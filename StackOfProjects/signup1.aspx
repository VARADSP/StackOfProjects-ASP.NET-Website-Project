<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup1.aspx.cs" Inherits="signup1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css">
        <link href="css/plugins.css" rel="stylesheet" type="text/css">
        <link href="css/homePopup.css" rel="stylesheet" type="text/css" />
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/responsive.css" rel="stylesheet" type="text/css">
        <link href="css/pe-icon-7-stroke.css" rel="stylesheet" type="text/css">
        <link href="css/animate.css" rel="stylesheet" type="text/css">
      <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
       <style>
           @import url('https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&subset=latin-ext');
#playground-container {
    height: 500px;
    overflow: hidden !important;
    
}
.main{margin-top:70px; 
-webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
padding:0px;
background:#7526c8;
background-image: linear-gradient(#7526c8, #248fca 150%);
}
.fb:focus, .fb:hover{color:FFF !important;}
body{
font-family: 'Raleway', sans-serif;
}

.left-side{
	padding:0px 0px 0px;
	
	background-size:cover;
}
.left-side h3{
	font-size: 30px;
    font-weight: 900;
	color:#FFF;
	padding: 50px 10px 00px 26px;
	}
	
	.left-side p{
    font-weight:600;
	color:#FFF;
	padding:10px 10px 10px 26px;
	}

	
	.fb{background: #7526c8;
    color: #FFF;
    padding: 10px 15px;
    border-radius: 18px;
    font-size: 12px;
    font-weight: 600;
    margin-right: 15px;
	margin-left:26px;-webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
    -moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
    box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
    }
	
    .tw{
        background: #7526c8;
    color: #FFF;
    padding: 10px 15px;
    border-radius: 18px;
    font-size: 12px;
    font-weight: 600;
    margin-right: 15px;
    -webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);}
	
	.right-side{
	padding:0px 0px 0px;
	background:#FFF;
	background-size:cover;
	min-height:514px;
}
	.right-side h3{
	font-size: 30px;
    font-weight: 700;
	color:#000;
	padding: 50px 10px 00px 50px;
	}
	.right-side p{
    font-weight:600;
	color:#000;
	padding:10px 50px 10px 50px;
	}
	.form{padding:10px 90px 10px 50px;}
    .form-control{
        box-shadow: none !important;
    border-radius: 0px !important;
    border-bottom: 1px solid #7526c8 !important;
    border-top: 1px !important;
    border-left: none !important;
    border-right: none !important;
    }
            .form-group i {
                font-size:18px !important;
                padding:0.5em;
            }	
    .btn-deep-purple {
    background: #7526c8;
    background-image: linear-gradient(#7526c8, #248fca 150%);
    padding: 5px 19px;
    color: #FFF;
    font-weight: 600;
    float: right;
    border:0;
}
    .back{
        background-color:#333;
        padding:10px 0 10px 0;
        -webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
    }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper row2">
        <div class="container">
	    <div class="col-md-10 col-md-offset-1 main" >
		<div class="col-md-6 left-side" >
		<h3>Stack Of Projects</h3>
		<p>Connect to our Network.</p>
		<br>

        <a href="login1.aspx"><h4 align="center" class="back" style="color:white;margin-top:14em;"><i class="fa  fa-chevron-left"></i> Already a Member</h4></a>

		</div><!--col-sm-6-->
		
		<div class="col-md-6 right-side">
		<h3><i class="fa fa-database"></i> Sign Up</h3>
		
<!--Form with header-->
<div class="form">


        <div class="form-group">
            <p>Name</p> <asp:TextBox ID="namebox" runat="server" placeholder="Alex Christan" BorderStyle="none" style="border-bottom:1px solid #ccc;color:blue; margin-left:2em !important"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Valid Name" ControlToValidate="namebox" ForeColor="#7526C8"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group" style="margin-top:1em">
		    <p>Choose your username </p> <asp:TextBox ID="usernamebox" runat="server" placeholder="abc@example.com" BorderStyle="none" style="color:blue;border-bottom:1px solid #ccc; margin-left:2em !important"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Valid mail id" ControlToValidate="usernamebox" ForeColor="#7526C8"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid mail id" ControlToValidate="usernamebox" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#7526C8"></asp:RegularExpressionValidator>
        </div>
        <div class="form-group">
		   <p> Create a Password </p> <asp:TextBox ID="passbox" runat="server" TextMode="Password" BorderStyle="none" style="color:blue;border-bottom:1px solid #ccc; margin-left:2em !important"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter a Password" ControlToValidate="passbox" ForeColor="#7526C8"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
		   <p> Confirm your Password </p> <asp:TextBox ID="cpassbox" TextMode="Password" runat="server" BorderStyle="none" style="color:blue;border-bottom:1px solid #ccc; margin-left:2em !important"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Confirm your Password" ControlToValidate="cpassbox" ForeColor="#7526C8"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passwords do not match!" ControlToCompare="passbox" ControlToValidate="cpassbox" ForeColor="#7526C8"></asp:CompareValidator>
        </div>
        <div class="form-group" style="margin-top:1em">
		    <p>Mobile Phone </p> <asp:TextBox ID="phonebox" runat="server" placeholder="+91" BorderStyle="none" style="color:blue;border-bottom:1px solid #ccc; margin-left:2em !important"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter your Mobile Number" ControlToValidate="phonebox" ForeColor="#7526C8"></asp:RequiredFieldValidator>
        </div>
        
         <div class="form-group" style="margin-top:1em">
		    <p>Your Qualification</p>  <asp:DropDownList ID="userqualify" runat="server" style="color:blue;border-bottom:1px solid #ccc; margin-left:2em !important">
                                        <asp:ListItem Text="Engineering First Year" Value="First Year"></asp:ListItem>
                                        <asp:ListItem Text="Engineering Second Year" Value="Second Year"></asp:ListItem>
                                        <asp:ListItem Text="Engineering Third Year" Value="Third Year"></asp:ListItem>
                                        <asp:ListItem Text="Engineering Final Year" Value="Final Year"></asp:ListItem>
                                         <asp:ListItem Text="B.E" Value="B.E"></asp:ListItem>
                                         <asp:ListItem Text="B.Tech" Value="B.Tech"></asp:ListItem>
                                          <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
		                               </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter your Mobile Number" ControlToValidate="userqualify" ForeColor="#7526C8"></asp:RequiredFieldValidator>
        </div>    
     <div class="form-group" style="margin-top:1em">
		    <p>Your Address</p>  <asp:TextBox ID="useraddress" runat="server" placeholder="Your Address" BorderStyle="none" style="padding:20px;border-bottom:1px solid #ccc; margin-left:2em !important"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter your Mobile Number" ControlToValidate="useraddress" ForeColor="#7526C8"></asp:RequiredFieldValidator>
        </div>    

     <div class="form-group" style="margin-top:1em">
		    <p>About Yourself</p>  <asp:TextBox ID="userdesc" runat="server" placeholder="Brief Info About Yourself" BorderStyle="none" style="padding:20px;border-bottom:1px solid #ccc; margin-left:2em !important"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Enter your Mobile Number" ControlToValidate="userdesc" ForeColor="#7526C8"></asp:RequiredFieldValidator>
        </div>    



        <div class="text-xs-center" style="margin-top:3em">
            <asp:Button ID="submit" runat="server" Text="Sign Up" style="background:#7526C8;color:#fff;border:0;padding:8px 19px;float:right;margin-bottom:3em;" OnClick="submit_Click" />
        </div>


</div>
<!--/Form with header-->
            
		
		</div><!--col-sm-6-->
		
        </div>
        
        </div>
        <!--container-->
                   <!-- #page -->
    <div id="page">
        <!-- header section -->
        <section id="top">
            <header>
                <div class="container">
					
					<!-- logo -->
                    <div id="logo">
                        <a href="index.aspx"><strong>Stack Of Projects</strong></a>
                    </div>
                </div>
            </header>
        </section>
        <!-- //end header section -->
    </div>
    <script>

        $(function () {
            var documentEl = $(document),

            fadeElem = $('.form');

            documentEl.on('scroll', function () {
                var currScrollPos = documentEl.scrollTop();

                fadeElem.each(function () {

                    var $this = $(this),
                    elemOffsetTop = $this.offset().top;
                    if (currScrollPos > elemOffsetTop) $this.css('opacity', 1 - (currScrollPos - elemOffsetTop) / 400);





                });


            });
        });

    </script>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
</asp:Content>

