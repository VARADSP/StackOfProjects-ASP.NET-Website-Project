<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="dynamicCreation.aspx.cs" Inherits="dynamicCreation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
         <div class="wrapper row2" >
               <br /><br /><br /><br /><br /><br /><br /><br />
       <div>
<table style="width:60%;position:relative;left:250px;bottom:60px;border:1px solid" align="center">
<tr>
<td colspan="2" align="center">
<b>Contact Us </b>
</td>
</tr>
<tr>
<td>
Gmail Username:
</td>
<td>
<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Gmail Password:
</td>
<td>
<asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox>
</td>
</tr>
<tr>
<td>
Subject:
</td>
<td>
<asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td>
To:
</td>
<td>
<asp:TextBox ID="txtTo" runat="server"></asp:TextBox>
</td>
</tr>
<tr>
<td valign="top">
Body:
</td>
<td>
<asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Columns="30" Rows="10" ></asp:TextBox>
</td>
</tr>
<tr>
<td>
</td>
<td>
<asp:Button ID="btnSubmit" Text="Send" runat="server" onclick="btnSubmit_Click" />
</td>
</tr>
</table>
</div>
      
</asp:Content>

