<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="login1.aspx.cs" Inherits="login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
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
background-image: linear-gradient(#7526c8, #248fca 150%)
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
    margin-right: 15px;-webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
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
	
    .back{
        text-align:center;
        margin-top:5em
    }
    @media(max-width:320px){
            .back i {
                border-radius:0 !important;
                margin-bottom:-0.1em;
            }
    }
    .back i{
        color:#333;
        border:8px double #fff;
        background:#fff;
        border-radius:50%;
        padding:0.5em;
        font-size:30px;
        -webkit-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
-moz-box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
box-shadow: 0px 0px 14px 0px rgba(0,0,0,0.24);
    }
    td{
        padding:1em;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       <div class="container">
	    <div class="col-md-10 col-md-offset-1 main" >
		<div class="col-md-6 left-side" >
		<h3>Stack Of Projects</h3>
		<p>Connect to our Network.</p>
		<br>

        <div class="back">
            <a href="home.aspx"><i class="fa fa-home"></i></a>
        </div>

		</div><!--col-sm-6-->
		
		<div class="col-md-6 right-side">
		<h3><i class="fa fa-lock"></i> Login</h3>
		
<!--Form with header-->
<div class="form">
    <table class="style1">
        <tr>
            <td class="style3">
                <i class="fa fa-envelope" style="font-size:18px"></i></td>
            <td>
                <asp:TextBox ID="userid" runat="server" BorderStyle="none" style="border-bottom:1px solid #ccc; margin-left:2em !important;line-height:1em" placeholder="abc@example.com"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="userid" ErrorMessage=" Enter email id " 
                    ForeColor="#7625C8"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="userid" ErrorMessage="Please Enter Valid Id" ForeColor="#7625c8" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                <i class="fa fa-th" style="font-size:18px"></i></td>
            <td>
                <asp:TextBox ID="pass" runat="server" TextMode="Password" BorderStyle="none" style="border-bottom:1px solid #ccc; margin-left:2em !important;" placeholder="******"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Password " ForeColor="#7625c8" ControlToValidate="pass"></asp:RequiredFieldValidator>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style2">
                <asp:Button ID="login" runat="server" Text="Login" Width="91px" style="border:1px solid #7526c8;background:#7526c8;color:#fff; padding:5px 19px;float:right" OnClick="Button_Id_Click" />
            </td>
        </tr>
    </table>
</div>
<!--/Form with header-->
            <hr width="70%" style="margin-top:3em !important;">
            <h4 align="center">OR</h4>
		<div class="signup">
            <a href="signup1.aspx"><h4>Create an account</h4></a>
        </div>
            
		</div><!--col-sm-6-->
		
        </div><!--col-sm-8-->
        
        </div><!--container-->
        
                   <!-- #page -->
    <div id="page">
        <!-- header section -->
        <div id="topping">
        </div>
        <section id="top">
            <header>
                <div class="container">
					
					<!-- logo -->
                    <div id="logo">
                        <a href="home.aspx"><strong>Stack Of Projects</strong></a>
                    </div>
                    
                    <div class="clear">
                    </div>
                </div>
            </header>
        </section>
        <!-- //end header section -->
    </div>

</asp:Content>

