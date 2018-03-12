<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tictac.aspx.cs" Inherits="SEProjects_tictac" %>

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
	<h1><a href="#">Tic tac<span></span></a></h1>
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
					<h2>Tic tac</h2>
					<p>Its a program for tic tac where you can buy items and it will be added to your basket and total will be given to you</p>

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

		<h2>About The Tic tac</h2>
		<p>Suppose you have to develop a program for managing the sales of your tic tac programm. The following functions have been requested by your Head (The shopkeeper):
1: The program should allow the user to select and buy different items present in that shop.
2: The user should be able to see the items that he has bought and print his total bill on the screen
3: The program should not end until the user specifies it to end. (The user should press 'q' to quit the program)</p>

		<pre>
			/**********************************
	           SOURCE CODE
	**********************************/
	#include <iostream.h>
	#include <string.h>
	#include <conio.h>

	char square[10] = {'o','1','2','3','4','5','6','7','8','9'};
	int checkwin();
	void board();

	int main()
	{
		int player = 1,i,choice;
		char mark;
		clrscr();
		do
		{
			board();
			player=(player%2)?1:2;
			cout << "Player " << player << ", enter a number:  ";
			cin >> choice;
			mark=(player == 1) ? 'X' : 'O';
			if (choice == 1 && square[1] == '1')
				square[1] = mark;
			else if (choice == 2 && square[2] == '2')
				square[2] = mark;
			else if (choice == 3 && square[3] == '3')
				square[3] = mark;
			else if (choice == 4 && square[4] == '4')
				square[4] = mark;
			else if (choice == 5 && square[5] == '5')
				square[5] = mark;
			else if (choice == 6 && square[6] == '6')
				square[6] = mark;
			else if (choice == 7 && square[7] == '7')
				square[7] = mark;
			else if (choice == 8 && square[8] == '8')
				square[8] = mark;
			else if (choice == 9 && square[9] == '9')
				square[9] = mark;
			else
			{
				cout<<"Invalid move ";
				player--;
				getch();
			}
			i=checkwin();
			player++;
		}while(i==-1);
		board();
		if(i==1)
			cout<<"==>\aPlayer "<<--player<<" win ";
		else
			cout<<"==>\aGame draw";
		getch();
		return 0;
	}
	/*********************************************
		FUNCTION TO RETURN GAME STATUS
		1 FOR GAME IS OVER WITH RESULT
		-1 FOR GAME IS IN PROGRESS
		O GAME IS OVER AND NO RESULT
	**********************************************/

	int checkwin()
	{
		if (square[1] == square[2] && square[2] == square[3])
			return 1;
		else if (square[4] == square[5] && square[5] == square[6])
			return 1;
		else if (square[7] == square[8] && square[8] == square[9])
			return 1;
		else if (square[1] == square[4] && square[4] == square[7])
			return 1;
		else if (square[2] == square[5] && square[5] == square[8])
			return 1;
		else if (square[3] == square[6] && square[6] == square[9])
			return 1;
		else if (square[1] == square[5] && square[5] == square[9])
			return 1;
		else if (square[3] == square[5] && square[5] == square[7])
			return 1;
		else if (square[1] != '1' && square[2] != '2' && square[3] != '3' && square[4] != '4' && square[5] != '5' && square[6] != '6' && square[7] != '7' && square[8] != '8' && square[9] != '9')
			return 0;
		else
			return -1;
	}


	/*******************************************************************
	     FUNCTION TO DRAW BOARD OF TIC TAC TOE WITH PLAYERS MARK
	********************************************************************/


	void board()
	{
		clrscr();
		cout << "\n\n\tTic Tac Toe\n\n";
		cout << "Player 1 (X)  -  Player 2 (O)" << endl << endl;
		cout << endl;
		cout << "     |     |     " << endl;
		cout << "  " << square[1] << "  |  " << square[2] << "  |  " << square[3] << endl;
		cout << "_____|_____|_____" << endl;
		cout << "     |     |     " << endl;
		cout << "  " << square[4] << "  |  " << square[5] << "  |  " << square[6] << endl;
		cout << "_____|_____|_____" << endl;
		cout << "     |     |     " << endl;
		cout << "  " << square[7] << "  |  " << square[8] << "  |  " << square[9] << endl;
		cout << "     |     |     " << endl << endl;
	}

	/*******************************************************************
					END OF PROJECT
	********************************************************************/
</pre>




	</div>
	<!-- end left hand main content -->

	<!-- start sidebar -->
	<div id="sidebar">

		<!-- sidebar h3: use <strong> for black text -->
		<h3>Current <strong>Owners</strong></h3>
		<ul class="clientlist">
			<li><a href="#"><h2>vinay rathi</h2></a></li>
			<li><a href="#"><h2>vinayrathi97@gmail.com</h2></a></li>
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
