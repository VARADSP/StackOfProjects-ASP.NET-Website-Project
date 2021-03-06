﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="supermarket.aspx.cs" Inherits="SEProjects_supermarket" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>rippedblue - a web template</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
<script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="js/jquery.flow.1.2.js"></script>
<script type="text/javascript" src="js/jquery.cycle.js"></script>
<script type="text/javascript" src="js/custom.js"></script>

</head>
<body>
    <form id="form1" runat="server">



        <div id="wrap">
<div id="header">
	<!-- page header - use <span></span> to colour text grey, default color blue -->
	<h1><a href="#">Super Market<span>Store</span></a></h1>
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
					<h2>Super Market</h2>
					<p>Its a program for Super Market where you can buy items and it will be added to your basket and total will be given to you</p>

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

		<h2>About The Super Market</h2>
		<p>Suppose you have to develop a program for managing the sales of your grocery store. The following functions have been requested by your Head (The shopkeeper):
1: The program should allow the user to select and buy different items present in that shop.
2: The user should be able to see the items that he has bought and print his total bill on the screen
3: The program should not end until the user specifies it to end. (The user should press 'q' to quit the program)</p>

		<pre>
			//***************************************************************
			//                   HEADER FILE USED IN PROJECT
			//****************************************************************

			#include<conio.h>
			#include<stdio.h>
			#include<process.h>
			#include<fstream.h>

			//***************************************************************
			//                   CLASS USED IN PROJECT
			//****************************************************************

			class product
			{
			 int pno;
			 char name[50];
			 float price,qty,tax,dis;
			 public:
				void create_product()
				{
				 cout<<"\nPlease Enter The Product No. of The Product ";
				 cin>>pno;
				 cout<<"\n\nPlease Enter The Name of The Product ";
				 gets(name);
				 cout<<"\nPlease Enter The Price of The Product ";
				 cin>>price;
				 cout<<"\nPlease Enter The Discount (%) ";
				 cin>>dis;
				 }

				void show_product()
				{
				 cout<<"\nThe Product No. of The Product : "<<pno;
				 cout<<"\nThe Name of The Product : ";
				 puts(name);
				 cout<<"\nThe Price of The Product : "<<price;
				 cout<<"\nDiscount : "<<dis;
				 }

			  int  retpno()
			  {return pno;}

			  float retprice()
			  {return price;}

			  char* retname()
			  {return name;}

			  int retdis()
			  {return dis;}

			};         //class ends here



			//***************************************************************
			//    	global declaration for stream object, object
			//****************************************************************

			 fstream fp;
			 product pr;


			//***************************************************************
			//    	function to write in file
			//****************************************************************

			void write_product()
			   {
			    fp.open("Shop.dat",ios::out|ios::app);
			    pr.create_product();
			    fp.write((char*)&pr,sizeof(product));
			    fp.close();
			    cout<<"\n\nThe Product Has Been Created ";
			    getch();
			   }


			//***************************************************************
			//    	function to read all records from file
			//****************************************************************


			void display_all()
			{
			    clrscr();
			    cout<<"\n\n\n\t\tDISPLAY ALL RECORD !!!\n\n";
			    fp.open("Shop.dat",ios::in);
			    while(fp.read((char*)&pr,sizeof(product)))
				{
				 pr.show_product();
				 cout<<"\n\n====================================\n";
				 getch();
				 }
			    fp.close();
			    getch();
			}


			//***************************************************************
			//    	function to read specific record from file
			//****************************************************************


			void display_sp(int n)
			{
			    int flag=0;
			    fp.open("Shop.dat",ios::in);
			    while(fp.read((char*)&pr,sizeof(product)))
				{
				 if(pr.retpno()==n)
					{
					 clrscr();
					 pr.show_product();
					 flag=1;
					}
				}
			    fp.close();
			if(flag==0)
			 cout<<"\n\nrecord not exist";
			    getch();
			}


			//***************************************************************
			//    	function to modify record of file
			//****************************************************************


			void modify_product()
			{
			    int no,found=0;
			    clrscr();
			    cout<<"\n\n\tTo Modify ";
			    cout<<"\n\n\tPlease Enter The Product No. of The Product";
			    cin>>no;
			    fp.open("Shop.dat",ios::in|ios::out);
			    while(fp.read((char*)&pr,sizeof(product)) && found==0)
				   {
				    if(pr.retpno()==no)
					   {
					    pr.show_product();
					    cout<<"\nPlease Enter The New Details of Product"<<endl;
					    pr.create_product();
					    int pos=-1*sizeof(pr);
					    fp.seekp(pos,ios::cur);
					    fp.write((char*)&pr,sizeof(product));
					    cout<<"\n\n\t Record Updated";
					    found=1;
					   }
				     }
			    fp.close();
			    if(found==0)
			    cout<<"\n\n Record Not Found ";
			    getch();
			}


			//***************************************************************
			//    	function to delete record of file
			//****************************************************************


			void delete_product()
			   {
			    int no;
			    clrscr();
			    cout<<"\n\n\n\tDelete Record";
			    cout<<"\n\nPlease Enter The product no. of The Product You Want To Delete";
			    cin>>no;
			    fp.open("Shop.dat",ios::in|ios::out);
			    fstream fp2;
			    fp2.open("Temp.dat",ios::out);
			    fp.seekg(0,ios::beg);
			    while(fp.read((char*)&pr,sizeof(product)))
				{
				 if(pr.retpno()!=no)
					{
					 fp2.write((char*)&pr,sizeof(product));
					 }
				 }
			    fp2.close();
			    fp.close();
			    remove("Shop.dat");
			    rename("Temp.dat","Shop.dat");
			    cout<<"\n\n\tRecord Deleted ..";
			    getch();
			    }


			//***************************************************************
			//    	function to display all products price list
			//****************************************************************

			    void menu()
			    {
			     clrscr();
			     fp.open("Shop.dat",ios::in);
			     if(!fp)
			     {
			       cout<<"ERROR!!! FILE COULD NOT BE OPEN\n\n\n Go To Admin Menu to create File";
			       cout<<"\n\n\n Program is closing ....";
			       getch();
			       exit(0);
			     }

			     cout<<"\n\n\t\tProduct MENU\n\n";
				  cout<<"====================================================\n";
				  cout<<"P.NO.\t\tNAME\t\tPRICE\n";
				  cout<<"====================================================\n";

			      while(fp.read((char*)&pr,sizeof(product)))
				 {
				   cout<<pr.retpno()<<"\t\t"<<pr.retname()<<"\t\t"<<pr.retprice()<<endl;
				}
			     fp.close();
			}




			//***************************************************************
			//    	function to place order and generating bill for Products
			//****************************************************************

			   void place_order()
			   {
			    int  order_arr[50],quan[50],c=0;
			    float amt,damt,total=0;
			    char ch='Y';
			    menu();
			    cout<<"\n============================";
			    cout<<"\n    PLACE YOUR ORDER";
			    cout<<"\n============================\n";
			    do{
				 cout<<"\n\nEnter The Product No. Of The Product : ";
				 cin>>order_arr[c];
				 cout<<"\nQuantity in number : ";
				 cin>>quan[c];
				 c++;
				 cout<<"\nDo You Want To Order Another Product ? (y/n)";
				 cin>>ch;
			    }while(ch=='y' ||ch=='Y');
			    cout<<"\n\nThank You For Placing The Order";getch();clrscr();
			      cout<<"\n\n********************************INVOICE************************\n";
			      cout<<"\nPr No.\tPr Name\tQuantity \tPrice \tAmount \tAmount after discount\n";
			      for(int x=0;x<=c;x++)
				{
					 fp.open("Shop.dat",ios::in);
					 fp.read((char*)&pr,sizeof(product));
					  while(!fp.eof())
						{
						if(pr.retpno()==order_arr[x])
							{
							 amt=pr.retprice()*quan[x];
							 damt=amt-(amt*pr.retdis()/100);
							 cout<<"\n"<<order_arr[x]<<"\t"<<pr.retname()<<"\t"<<quan[x]<<"\t\t"<<pr.retprice()<<"\t"<<amt<<"\t\t"<<damt;
							 total+=damt;
							}
						fp.read((char*)&pr,sizeof(product));
						}

					 fp.close();
				 }
			       cout<<"\n\n\t\t\t\t\tTOTAL = "<<total;
			    getch();
			    }

			//***************************************************************
			//    	INTRODUCTION FUNCTION
			//****************************************************************

			void intro()
			{
			 clrscr();
			 gotoxy(31,11);
			 cout<<"SUPER MARKET";
			 gotoxy(35,14);
			 cout<<"BILLING";
			 gotoxy(35,17);
			 cout<<"PROJECT";
			 cout<<"\n\nMADE BY : sanket pujari";
			 cout<<"\n\nSCHOOL : diems";
			 getch();

			}




			//***************************************************************
			//    	ADMINSTRATOR MENU FUNCTION
			//****************************************************************
			void admin_menu()
			{
			  clrscr();
			  char ch2;
			  cout<<"\n\n\n\tADMIN MENU";
			  cout<<"\n\n\t1.CREATE PRODUCT";
			  cout<<"\n\n\t2.DISPLAY ALL PRODUCTS";
			  cout<<"\n\n\t3.QUERY ";
			  cout<<"\n\n\t4.MODIFY PRODUCT";
			  cout<<"\n\n\t5.DELETE PRODUCT";
			  cout<<"\n\n\t6.VIEW PRODUCT MENU";
			  cout<<"\n\n\t7.BACK TO MAIN MENU";
			  cout<<"\n\n\tPlease Enter Your Choice (1-7) ";
			  ch2=getche();
			  switch(ch2)
			  {
			    case '1': clrscr();
				      write_product();
				      break;
			    case '2': display_all();break;
			    case '3':
				       int num;
				       clrscr();
				       cout<<"\n\n\tPlease Enter The Product No. ";
				       cin>>num;
				       display_sp(num);
				       break;
			      case '4': modify_product();break;
			      case '5': delete_product();break;
			      case '6': menu();
					getch();
			      case '7': break;
			      default:cout<<"\a";admin_menu();
			   }
			}


			//***************************************************************
			//    	THE MAIN FUNCTION OF PROGRAM
			//****************************************************************


			void main()
			{
			  char ch;
			  intro();
			  do
			    {
				  clrscr();
				  cout<<"\n\n\n\tMAIN MENU";
				  cout<<"\n\n\t01. CUSTOMER";
				  cout<<"\n\n\t02. ADMINISTRATOR";
				  cout<<"\n\n\t03. EXIT";
				  cout<<"\n\n\tPlease Select Your Option (1-3) ";
				  ch=getche();
				  switch(ch)
				  {
					 case '1': clrscr();
						   place_order();
						   getch();
						   break;
					  case '2': admin_menu();
						    break;
					  case '3':exit(0);
					  default :cout<<"\a";
				}
			    }while(ch!='3');
			}

			//***************************************************************
			//    			END OF PROJECT
			//***************************************************************
		</pre>




	</div>
	<!-- end left hand main content -->

	<!-- start sidebar -->
	<div id="sidebar">

		<!-- sidebar h3: use <strong> for black text -->
		<h3>Current <strong>Owners</strong></h3>
		<ul class="clientlist">
			<li><a href="#"><h2>sanket pujari</h2></a></li>
			<li><a href="#"><h2>sanketpujari97@gmail.com</h2></a></li>
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
    <div>
    
    </div>
    </form>
</body>
</html>
