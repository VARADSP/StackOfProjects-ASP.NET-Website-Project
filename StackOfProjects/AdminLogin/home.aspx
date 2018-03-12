<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLogin/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    
    <style>
        #box{
		background:#333;
		color:#fff;
		width:500px;
		height:90px;
		padding:40px;
		text-align:center;
		
		
		}

                .readmore1{
		background-color: #333;
	color:#fff;
	padding: 10px 15px;
	border:none;
    text-decoration:none;

}
         .readmore2{
		background-color: #333;
	color:#fff;
	padding: 10px 15px;
	border:none;
    text-decoration:none;

}
        .readmore3{
		background-color: #333;
	color:#fff;
	padding: 10px 15px;
	border:none;
    text-decoration:none;

}
       .readmore4{
		background-color: #333;
	color:#fff;
	padding: 10px 15px;
	border:none;
    text-decoration:none;

}
.readmore1:hover{
	background:red;
	color: #fff;
    text-decoration:none;

}
.readmore2:hover{
	background:red;
	color: #fff;
    text-decoration:none;

}
.readmore3:hover{
	background:red;
	color: #fff;
    text-decoration:none;

}
.readmore4:hover{
	background:red;
	color: #fff;
    text-decoration:none;

}


    </style>
     <script src="assets/js/jquery-3.2.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
<body >
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
  </div>
</div>
<div class="wrapper row1">
  <header id="header" class="hoc clear"> 
  </header>
</div>
<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/project-list.png');">
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article>
      <div>
        <p class="heading">Welcome TO Stack Of Projects, <asp:Label ID="user" runat="server" Text="Label"></asp:Label></p>
        <h2 class="heading">PROJECTS LIST</h2>
        <p>We Provide Projects References For People</p>
      </div>
      <footer>
        <ul class="nospace inline pushright">
          <li><a class="btn inverse" href="projects1.aspx">View Projects</a></li>
            <li><a class="btn" href="login1.aspx">Sign In</a></li>
          <li><a class="btn" href="signup1.aspx">Register</a></li>
             
        
        </ul>
      </footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row2">
  <div class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <ul class="nospace group cta">
      <li class="one_third first">
        <article><strong class="numb">01</strong>
          <h6 class="heading font-x1"><a href="#">What We Do?</a></h6>
          <p>We Provide the references for different projects done by the people for the people&hellip;</p>
        </article>
      </li>
      <li class="one_third">
        <article><strong class="numb">02</strong>
          <h6 class="heading font-x1"><a href="#">How Can You View Projects?</a></h6>
          <p>This website provides you with full reference to different projects list we maintain&hellip;</p>
        </article>
      </li>
      <li class="one_third">
        <article><strong class="numb">03</strong>
          <h6 class="heading font-x1"><a href="#">Why To Register?</a></h6>
          <p>By registering with our webiste we can give oppurtunities to host your projects here!</p>
        </article>
      </li>
    </ul>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <ul class="nospace group services">
      <li class="one_third first btmspace-30">
        <article><a href="#"><i class="fa fa-4x fa-language"></i></a>
          <h6 class="heading font-x1">Different Languages For Projects</h6>
          <p>Projects are designed in different languages like C,C++,.NET,HTML5 and all of them are hosted here&hellip;</p>
        </article>
      </li>
      <li class="one_third btmspace-30">
        <article><a href="#"><i class="fa fa-4x fa-balance-scale"></i></a>
          <h6 class="heading font-x1">Category of Projects We Provide!</h6>
          <p>Projects are categorised here depending on their technology used to create them&hellip;</p>
        </article>
      </li>
      <li class="one_third btmspace-30">
        <article><a href="#"><i class="fa fa-4x fa-map-signs"></i></a>
          <h6 class="heading font-x1">How to Find Proper Projects For Reference</h6>
          <p>By looking for right category of projects,you can get the reference&hellip;</p>
        </article>
      </li>
      </ul>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper bgded overlay" style="background-image:url('images/demo/backgrounds/banner.jpg');">
  <article class="hoc container clear center"> 
    <!-- ################################################################################################ -->
    <h2 class="font-x3">About The Website</h2>
    <p class="btmspace-50">In the website,Use The View Projects link to dive into the massive list of projects we provide!<br>We have created register portal for new visitors to become users of the website and host their own projects for others and contribute to the organization!</p>
    
    <!-- ################################################################################################ -->
  </article>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <section class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="center btmspace-80">
      <h3 class="font-x3 nospace">About Us</h3>
      <p class="nospace">We are a team who maintain this website and contribute to the organization</p>
    </div>
    <div class="group">
      <article class="one_third" style="margin-left:140px"><a href="#"><img class="btmspace-30" height="50px" width="50px" src="images/makers/vinay.jpg" alt="" style="height:100px;width:100px;"></a>
        <h3 class="heading">Vinay</h3>
        
        <p class="nospace"><a href="#" class="readmore1">Read More &raquo;</a></p><br />
      </article>
      <article class="one_third"><a href="#"><img class="btmspace-30" height="50" width="50" src="images/makers/varad.jpg" alt="" style="height:100px;width:100px;"></a>
        <h3 class="heading">Varad</h3>
        <p class="para2"></p>
        <p class="nospace"><a href="#" class="readmore2">Read More &raquo;</a></p><br />
      </article>
        <article class="one_third" style="margin-left:140px"><a href="#"><img class="btmspace-30" style="height:100px;width:100px;" height="50px" width="50px" src="images/makers/sanket.jpg" alt=""></a>
        <h3 class="heading">Sanket</h3>
        <p class="para3"></p>
        <p class="nospace"><a href="#" class="readmore3">Read More &raquo;</a></p>
      </article>
        <article class="one_third"><a href="#"><img class="btmspace-30" height="50px" width="50px" style="height:100px;width:100px;" src="images/makers/abhijit.jpg" alt=""></a>
        <h3 class="heading">Abhijit</h3>
        <p class="para4"></p>
        <p class="nospace"><a href="#" class="readmore4">Read More &raquo;</a></p>
      </article>
        <article style="background-color:aliceblue;margin-left:500px;left:500px;">
        <p class="para1">

        </p>
      </article>
      
      
    </div>
    <!-- ################################################################################################ -->
  </section>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
    <script>

        $(document).ready(function () {



            $('.readmore1').on('mouseenter', function () {
                $('.para1').show().css('color', 'coral', 'display', 'inline-block', 'background-color', 'black', 'padding', '30px');
                $('.para1').html('Vinay Rathi <br> Computer Engineer <br> DIEMS,Auramgabad');
            });

            $('.readmore1').on('mouseleave', function () {
                $('.para1').html('');
            });


            $('.readmore2').on('mouseenter', function () {
                $('.para1').show().css('color', 'coral', 'display', 'inline-block', 'background-color', 'black', 'padding', '30px');
                $('.para1').html('Varad Parlikar <br> Computer Engineer <br> DIEMS,Auramgabad');
            });

            $('.readmore2').on('mouseleave', function () {
                $('.para1').html('');
            });


            $('.readmore3').on('mouseenter', function () {
                $('.para1').show().css('color', 'coral', 'display', 'inline-block', 'background-color', 'black', 'padding', '30px');
                $('.para1').html('Sanket Pujari <br> Computer Engineer <br> DIEMS,Auramgabad');
            });

            $('.readmore3').on('mouseleave', function () {
                $('.para1').html('');
            });


            $('.readmore4').on('mouseenter', function () {
                $('.para1').show().css('color', 'coral', 'display', 'inline-block', 'background-color', 'black', 'padding', '30px');
                $('.para1').html('Abhijeet Pedhe <br> Computer Engineer <br> DIEMS,Auramgabad');
            });

            $('.readmore4').on('mouseleave', function () {
                $('.para1').html('');
            });





            $('.btn').animate({
                height: '50px',
                width: '250px',
                opacity: '1'
            });

            $('.heading').animate({
                height: 20,

            });

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



        });
    </script>

    
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
</body>

</asp:Content>


