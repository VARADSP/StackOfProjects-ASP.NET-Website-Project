<%@ Page Language="C#" AutoEventWireup="true" CodeFile="carsales.aspx.cs" Inherits="TEProjects_carsales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Car Sales</title>
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
	<h1><a href="#">Jaguar<span>showroom</span></a></h1>
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
					<h2>Jaguar Motors</h2>
					<p>Its a program for car showroom where you can buy cars.</p>

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

		<h2>About The car workshop</h2>
		<p>Suppose you have to develop a program for managing the sales of your car showroom. The following functions have been requested by your Head (The shopkeeper):
1: The program should allow the user to select and buy different items present in that shop.
2: The user should be able to see the items that he has bought and print his total bill on the screen
3: The program should not end until the user specifies it to end. (The user should press 'q' to quit the program)</p>

		<pre>
			import java.util.*;
/**
* Stores information about cars. Also calculates the cars age from the current date.
* @
*
* PUBLIC FEATURES:
* // Constructors
*    public Car()
*    public Car(String man, String mod, String info)
*
* // Methods
*    public int getAge()
*    public String getInformation()
*    public String getInformation()
*    public double getKilometers()
*    public String getManufacturer()
*    public String getModel()
*    public int getPrice()
*    public int getYear()
*    public void setInformation(String info)
*    public void setKilometers(double km)
*    public void setManufacturer(String man)
*    public void setModel(String mod)
*    public void setPrice(int cost)
*    public void setYear(int yr)
*
* COLLABORATORS:
*
* @version 1.0, 16 Oct 2004
* @author Adam Black
*/
public class Car implements java.io.Serializable
{
private String model;
private String manufacturer;
private String information;
private int year;
private int price;
private double kilometers;

public Car(){}

/**
* @param man manufacturers name
* @param mod model name
* @param info extra information about the car
*/
public Car(String man, String mod, String info)
{
model = mod;
manufacturer = man.toUpperCase();
information = info;
}

/**
* calculates using current year - model year
*/
public int getAge()
{
GregorianCalendar calendar = new GregorianCalendar();
return (calendar.get(Calendar.YEAR) - year);
}

public String getInformation()
{
return information;
}

public double getKilometers()
{
return kilometers;
}

public String getManufacturer()
{
return manufacturer;
}

public String getModel()
{
return model;
}

public int getPrice()
{
return price;
}

public int getYear()
{
return year;
}

public void setInformation(String info)
{
information = info;
}

public void setKilometers(double km)
{
kilometers = km;
}

public void setManufacturer(String man)
{
manufacturer = man.toUpperCase();
}

public void setModel(String mod)
{
model = mod;
}

public void setPrice(int cost)
{
price = cost;
}

public void setYear(int yr)
{
year = yr;
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
			<li><a href="#"><h2>akshay mehta</h2></a></li>
	<li><a href="#"><h2>akshaymehta4848@gmail.com</h2>
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
