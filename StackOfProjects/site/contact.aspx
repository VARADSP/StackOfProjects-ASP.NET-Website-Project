<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="contact.aspx.vb" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

      
<div class="container">
  <div class="row header">
    <h1>CONTACT US &nbsp;</h1>
    <h3>Fill out the form below to learn more!</h3>
  </div>
  <div class="row body">
    <form action="#">
      <ul>
        
        <li>
          <p class="left">
            <label for="first_name">first name</label>
            <input type="text" name="first_name" placeholder="" />
          </p>
          <p class="pull-left" >
            <label for="last_name">last name</label>
            <input type="text" name="last_name" placeholder="" />      
          </p>
        </li>
        
        <li>
          <p>
            <label for="email">email <span class="req">*</span></label>
            <input type="email" name="email" placeholder="" />
          </p>
        </li>        
        <li><div class="divider"></div></li>
        <li>
          <label for="comments">comments</label>
          <textarea cols="46" rows="10" name="comments"></textarea>
        </li>
        
        <li>
          <input class="btn btn-submit" type="submit" value="Submit" />
          
        </li>
        
      </ul>
    </form>  
  </div>
</div>
  
    
</asp:Content>

