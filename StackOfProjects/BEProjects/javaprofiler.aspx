<%@ Page Language="C#" AutoEventWireup="true"CodeFile="javaprofiler.aspx.cs" Inherits="generate_page_runtime.javaprofiler" %>
<!DOCTYPE html>
<head>
<title>javaprofiler</title>
<link rel="stylesheet" href="styles.css" type="text/css" />
 <script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>
 <script type="text/javascript" src="js/jquery.flow.1.2.js"></script>
 <script type="text/javascript" src="js/jquery.cycle.js"></script>
 <script type="text/javascript" src="js/custom.js"></script>
<style>
.downloadbtn{
	background-color: #abc;
	color:#fff;
padding: 10px 15px;
	border:none;
}
.downloadbtn:hover{
	background:red;
	color: #fff;
}
</style>
</head>
<body>
   <form id="form1" runat="server">
       <div id="wrap">
       <div id="header">
	<h1><a href="#">Project Information<span></span></a></h1>
 <a href="javascript:history.go(-1)" style="display:block;width:115px;height:25px;background:#4E9CAF;padding:10px;text-align:center;border-radius:5px;color:white;font-weight:bold;float:right;">Back To Main Page</a>
	<div class="clear"></div></div>
<div id="page-title">
	<div id="slides-container">
		<div id="slides">
			<div>
				<div class="slide-image"><img src="PROJECT-C.png" alt="Slide #1 image" /></div>
				<div class="slide-text">
					<h2>Project Details</h2>
<p>Its a project where I have designed different profiles</p> <p> Technology Used java</p>
				</div>
			</div>
			<div><div class="slide-image"><img src="hqdefault.jpg" alt="Slide #2 image" /></div>
							<div class="slide-text">
<h2></h2>
<p></p></div></div>	
		<div><div class="slide-image"><img src="images/slide-3.png" alt="Slide #3 image" /></div><div class="slide-text">	
	<h2></h2>	<p></p></div></div></div>
	<div class="controls"><span class="jFlowNext"><span>Next</span></span><span class="jFlowPrev"><span>Prev</span></span></div>		
		<div id="myController" class="hidden"><span class="jFlowControl"></span><span class="jFlowControl"></span><span class="jFlowControl"></span></div>
	</div>
	<div class="clear"></div>
</div>
<div id="content"><!-- left hand main content --><div id="page">
		<h2>About The Student Report On Project</h2>
		<p>This program is designed in the following technologyjava and the program is designed for the following purpose Its a project where I have designed different profiles 
<pre>
</pre>
 <br /><br /><br /><br /><br />
<asp:Button runat="server" class="downloadbtn" Text="Download Project" onclick="downloadClick"/>
	</div>
	<div id="sidebar">
		<h3>Current <strong>Owners</strong></h3>
		<ul class="clientlist">
		<li><a href="#"><h2>sumedh</h2></a></li>
			<li><a href="gmail.com?email=sumedh@gmail.com"><h2>sumedh@gmail.com</h2></a></li>
			<li><a href="#"></a></li><li><a href="#"></a></li>
		</ul><br class="clear" />
		<h3>Related <strong>websites</strong></h3>
		<ul>
			<li><a href="#"><h3>pfoiels</h3></a></li>
			<li><a href="github.com"><h3>Github For Code</h3></a></li>
		</ul>
	</div>
	<div class="clear"></div>
</div>
<div class="footer">
	<p>&copy; 2017 SOP <a href="">Function</a> and <a href="">Stack Of Projects</a><br /><a href="" title="valid XHTML">XHTML</a> | <a href="http://jigsaw.w3.org/css-validator/check/referer" title="valid CSS">CSS</a></p>
</div>
</div>
	</div>
    <div>
           <asp:literal id="output" runat="server"/>
       </div>
   </form>
</body>
</html>
