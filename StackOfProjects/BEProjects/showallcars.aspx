﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="showallcars.aspx.cs" Inherits="BEProjects_showallcars" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Show Cars</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="js/jquery.flow.1.2.js"></script>
<script type="text/javascript" src="js/jquery.cycle.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        	<div id="wrap">
<div id="header">
	<!-- page header - use <span></span> to colour text grey, default color blue -->
	<h1><a href="#">cars<span>showroom</span></a></h1>
 <a href="javascript:history.go(-1)" style="display:block;width:115px;height:25px;background:#4E9CAF;padding:10px;text-align:center;border-radius:5px;color:white;font-weight:bold;float:right;">Back To Main Page</a>

		<!-- header search form -->

	<div class="clear"></div>
</div>



<div id="page-title">
	<div id="slides-container">
		<div id="slides">
			<div>

				<div class="slide-image"><img src="PROJECT-C.png" alt="Slide #1 image" /></div>
				<div class="slide-text">
					<h2>Show all cars</h2>
					<p>Its a program for showing carswhere you can buy items and it will be added to your basket and total will be given to you</p>

				</div>
			</div>

			<div><div class="slide-image"><img src="hqdefault.jpg" alt="Slide #2 image" /></div>
							<div class="slide-text">
			<h2></h2>
			<p></p></div></div>
			<div><div class="slide-image"><img src="images/slide-3.png" alt="Slide #3 image" /></div>
							<div class="slide-text">
		<h2></h2>
			<p></p></div></div>
		</div>

		<div class="controls"><span class="jFlowNext"><span>Next</span></span><span class="jFlowPrev"><span>Prev</span></span></div>

		<div id="myController" class="hidden"><span class="jFlowControl"></span><span class="jFlowControl"></span><span class="jFlowControl"></span></div>
	</div>




	<div class="clear"></div>
</div>


<div id="content">
	<!-- left hand main content -->
	<div id="page">

		<h2>About The all car show</h2>
		<p>Suppose you have to develop a program for managing the sales of your grocery store. The following functions have been requested by your Head (The shopkeeper):
1: The program should allow the user to select and buy different items present in that shop.
2: The user should be able to see the items that he has bought and print his total bill on the screen
3: The program should not end until the user specifies it to end. (The user should press 'q' to quit the program)</p>

		<pre>
							#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

int main(){
char choice;
int x,sugar=350,jam=250,shampoo=199,bread=50 ,eggs=90,subtotal1=0,subtotal2=0,subtotal3=0,subtotal4=0,subtotal5=0,total;


printf("WELCOME TO NUST DHABBA\n");
printf("World's biggest Departmental store\n");
printf("Enter choice\n");
printf("[1] for 1 kg sugar bag\n");
printf("[2] for Jam\n");
printf("[3] for XYZ Shampoo\n");
printf("[4] for Bread\n");
printf("[5] for 1 dozen eggs\n");
printf("[q] to quit shoping\n");
choice=getch();

if((choice=='q')||(choice=='Q'))
exit(0);

if(choice=='1') {
printf("shopped:1 kg sugar bag=350 rupees\n",sugar);
printf("how many?\n",x);
scanf("%d",&x);
subtotal1=sugar*x;
printf("Sub total:sugar=%d",subtotal1);
getche();
}

if(choice=='2'){
printf("Shopped:Jam=250\n",jam);
printf("How many?\n",x);
scanf("%d",&x);
subtotal2=jam*x;
printf("Sub total:Jam=%d",subtotal2);
getch();
}
if(choice=='3') {

printf("shopped:XYZ shampoo\n",shampoo);
printf("How many?\n",x);
scanf("%d",&x);
subtotal3=shampoo*x;
printf("Sub total:shampoo=%d",subtotal3);
getch();
}

if(choice=='4'){
printf("Shopped:Bread\n",bread);
printf("How many?\n",x);
scanf("%d",&x);
subtotal4=bread*x;
printf("Sub total:Bread=%d",subtotal4);

getch();
}
if(choice=='5') {

printf("shopped:dozen eggs\n",shampoo);
printf("How many dozens you want?\n",x);
scanf("%d",&x);
subtotal5=eggs*x;
printf("Sub total:eggs=%d",subtotal5);
getch();
}}
		</pre>




	</div>
	<!-- end left hand main content -->

	<!-- start sidebar -->
	<div id="sidebar">

		<!-- sidebar h3: use <strong> for black text -->
		<h3>Current <strong>Owners</strong></h3>
		<ul class="clientlist">
			<li><a href="#"><h2>Ajay salve</h2>
			<li><a href="#"><h2>ajaysalve@gmail.com</h2></a></li>
			<li><a href="#"></a></li>
			<li><a href="#"></a></li>
		</ul>
		<br class="clear" />

		<h3>Related <strong>websites</strong></h3>
		<ul>
			<li><a href="#"><h3>github.com</h3></a></li>
			<li><a href="#"><h3>codepen.com</h3></a></li>
		</ul>


	</div>
	<!-- end sidebar -->

	<div class="clear"></div>

</div>
<!-- start footer -->
<div class="footer">
	<p>&copy; 2017 SOP <a href="">Function</a> and <a href="">Stack Of Projects</a><br /><a href="" title="valid XHTML">XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="valid CSS">CSS</a></p>
</div>
<!-- end footer -->
</div>
	</div>

    
    </div>
    </form>
</body>
</html>
