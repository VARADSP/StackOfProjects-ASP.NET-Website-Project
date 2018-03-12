<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="assets/css/contactstyle.css">


    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <header class="ccheader">
        <h1>Contact Us</h1>
    </header>
    <div class="ccfield-prepend" style="width:40%;position:relative;left:400px">
        <span class="ccform-addon"><i class="fa fa-user fa-2x"></i></span>
        <asp:TextBox ID="YourName" class="ccformfield" placeholder="Full Name" runat="server"></asp:TextBox>
    </div>
    <div class="ccfield-prepend" style="width:40%;position:relative;left:400px">
        <span class="ccform-addon"><i class="fa fa-envelope fa-2x"></i></span>
        <asp:TextBox ID="YourEmail" class="ccformfield" placeholder="Email" runat="server"></asp:TextBox>
    </div>
    <div class="ccfield-prepend" style="width:40%;position:relative;left:400px">
        <span class="ccform-addon"><i class="fa fa-mobile-phone fa-2x"></i></span>
        <asp:TextBox ID="YourPhone" class="ccformfield" placeholder="Phone" runat="server"></asp:TextBox>
    </div>
    <div class="ccfield-prepend" style="width:40%;position:relative;left:400px">
        <span class="ccform-addon"><i class="fa fa-info fa-2x"></i></span>
        <asp:TextBox ID="YourSubject" class="ccformfield" placeholder="Subject" runat="server"></asp:TextBox>
    </div>
    <div class="ccfield-prepend" style="width:40%;position:relative;left:400px">
        <span class="ccform-addon"><i class="fa fa-comment fa-2x"></i></span>
        <asp:TextBox ID="Comments" class="ccformfield" placeholder="Message" runat="server"></asp:TextBox>
    </div>
    <div class="ccfield-prepend" style="width:40%;position:relative;left:630px">
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>

    </form>
    </div>
    <div class="credit">
        <p><img src="images/stack-sponsor.jpg" /></p>
    </div>





    <script>

        $(function () {
            var documentEl = $(document),

            fadeElem = $('.wrapper');

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

