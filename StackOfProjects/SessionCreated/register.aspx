<%@ Page Title="" Language="C#" MasterPageFile="~/SessionCreated/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <link href="assets/css/registerstyle.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="row header">
  
    <form id="form1">
    <div>
      <div id="login-box">
  <div class="left">
    <h1>Sign up</h1>

      Full Name:<asp:TextBox ID="fullname" runat="server">Full Name</asp:TextBox>
      Address:<asp:TextBox ID="address" runat="server"></asp:TextBox>
      Current Year:<asp:TextBox ID="currentyear" runat="server"></asp:TextBox>
      Branch:<asp:TextBox ID="branch" runat="server"></asp:TextBox>
      Email:<asp:TextBox ID="email" runat="server"></asp:TextBox>
      Password:<asp:TextBox ID="password" runat="server"></asp:TextBox>
      Contact:<asp:TextBox ID="contact" runat="server"></asp:TextBox>

      <asp:Button ID="submit" runat="server" Text="submit" />
    
    <!--<input type="text" name="Full name" placeholder="Full name" />
    <input type="text" name="Address" placeholder="Address" />
      <input type="text" name="Current year" placeholder="Current year" />
      <input type="text" name="Branch" placeholder="Branch" />
    <input type="text" name="email" placeholder="E-mail" />
    <input type="password" name="password" placeholder="Password" />
    <input type="password" name="password2" placeholder="Retype password" />
 <input type="text" name="Contact" placeholder="Contact" />   
    <input type="submit" name="signup_submit" value="Sign me up" />

      --->
  </div>
  
  <div class="right">
    <span class="loginwith">Sign in with<br />social network</span>
    
    <button class="social-signin facebook">Log in with facebook</button>
    <button class="social-signin twitter">Log in with Twitter</button>
    <button class="social-signin google">Log in with Google+</button>
  </div>
  <div class="or">OR</div>
</div> 
    </div>
        </form>
            </div>
         </div>
</asp:Content>

