﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="welcomepanel.aspx.cs" Inherits="BEProjects_welcomepanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome Panel</title>
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
	<h1><a href="#">Welcome <span>panel</span></a></h1>
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
					<h2>welcome panel</h2>
					<p>Its a program for welcome panel where you can see the car list with the lastest version and it will be added to your showroom.</p>

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

		<h2>About The Welcome panel</h2>
		<p>Suppose you have to develop a program for managing the sales of your car shoeroom. The following functions have been requested by your Head (The shopkeeper):
1: The program should allow the user to select and buy different items present in that shop.
2: The user should be able to see the items that he has bought and print his total bill on the screen
3: The program should not end until the user specifies it to end. (The user should press 'q' to quit the program)</p>

		<pre>
			import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.border.*;
/**
* A welcome dialog, which displays basic statistics about the cars in the data file
* @
*
* PUBLIC FEATURES:
* // Constructors
*    public WelcomePanel(CarSalesSystem carSys, JPanel dest, String data)
*
* // Methods
*    public void carsUpdated(CarUpdateEvent ev)
*    public void stateChanged(ChangeEvent ev)
*
* COLLABORATORS:
*
*
* @version 1.0, 16 Oct 2004
* @author Adam Black
*/
public class WelcomePanel extends JPanel implements ChangeListener
{
private CarSalesSystem carSystem;
private JLabel headingLabel = new JLabel("Welcome to the Car Sales System", JLabel.CENTER);
private JLabel carsLabel = new JLabel();
private JLabel manufacturersLabel = new JLabel();
private JLabel avgPriceLabel = new JLabel();
private JLabel avgKmLabel = new JLabel();
private JLabel avgAgeLabel = new JLabel();
private JLabel versionLabel = new JLabel();
private JLabel dataSizeLabel = new JLabel();
private JPanel statsPanel = new JPanel();
private JPanel centerPanel = new JPanel(new FlowLayout(FlowLayout.LEFT, 10, 5));
private boolean carsUpdated = false;
private String file;

/**
* @param carSys link to CarSalesSystem object
* @param dest panel to place components within
* @param data filename of data file
*/
public WelcomePanel(CarSalesSystem carSys, String data)
{
carSystem = carSys;
file = data;
setLayout(new BorderLayout(0, 10));
carSys.addCarUpdateListener(this);

statsPanel.setLayout(new BoxLayout(statsPanel, BoxLayout.Y_AXIS));
centerPanel.add(statsPanel);
headingLabel.setBorder(new EmptyBorder(new Insets(10, 0, 0, 0)));

updateStats();

statsPanel.add(carsLabel);
statsPanel.add(manufacturersLabel);
statsPanel.add(avgPriceLabel);
statsPanel.add(avgKmLabel);
statsPanel.add(avgAgeLabel);
statsPanel.add(Box.createVerticalStrut(20));
statsPanel.add(versionLabel);
statsPanel.add(dataSizeLabel);

add(headingLabel, "North");
add(centerPanel, "Center");
}

/**
* this method is invoked when a car has been added to the system.
*
* @param ev CarUpdateEvent Object
*/
public void carsUpdated(CarUpdateEvent ev)
{
if (ev.getSource() == carSystem)
{
carsUpdated = true;
}
}

/**
* when the tab on the main frame gets changed over to this one, we may have to update the
* car list with the latest version
*
* @param ev ChangeEvent object
*/
public void stateChanged(ChangeEvent ev)
{
// the source came from a JTabbedPane
if (ev.getSource() instanceof JTabbedPane)
{
JTabbedPane tab = (JTabbedPane)ev.getSource();
// the Welcome tab has just been chosen
if (tab.getSelectedIndex() == 0)
{
	// if the statistics is not up to date
	if (carsUpdated)
	{
		// update them
		updateStats();
		// next time don't update the statistics, unless a car is added to the system
		carsUpdated = false;
	}
}
}
}

/**
* update all the statistics
*/
private void updateStats()
{
// receive new statistics
int cars = (int)carSystem.getStatistics(CarSalesSystem.CARS_COUNT);
int manufacturers = (int)carSystem.getStatistics(CarSalesSystem.MANUFACTURERS_COUNT);
double avgPrice = Math.floor(carSystem.getStatistics(CarSalesSystem.AVERAGE_PRICE) * 10 + 0.5) / 10;
double avgKm = Math.floor(carSystem.getStatistics(CarSalesSystem.AVERAGE_DISTANCE) * 10 + 0.5) / 10;
double avgAge = Math.floor(carSystem.getStatistics(CarSalesSystem.AVERAGE_AGE) * 10 + 0.5) / 10;
java.io.File f = new java.io.File(file);
long size = f.length(); // get length of binary data file

carsLabel.setText("Total number of cars: " + String.valueOf(cars));
manufacturersLabel.setText("Total number of manufacturers: " + String.valueOf(manufacturers));
avgPriceLabel.setText("Average car price: " + String.valueOf(avgPrice));
avgKmLabel.setText("Average car kilometers: " + String.valueOf(avgKm));
avgAgeLabel.setText("Average car age: " + String.valueOf(avgAge));
versionLabel.setText("Car Sales System, Version " + CarSalesSystem.APP_VERSION);
dataSizeLabel.setText("Size of data file: " + size + " bytes");
}
}
		</pre>




	</div>
	<!-- end left hand main content -->

	<!-- start sidebar -->
	<div id="sidebar">

		<!-- sidebar h3: use <strong> for black text -->
		<h3>Current <strong>Owners</strong></h3>
		<ul class="clientlist">
			<li><a href="#"><h2>amol muley</h2>
			<li><a href="#"><h2>amolmuley324@gmail.com</h2></a></li>
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
