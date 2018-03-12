<%@ Page Language="C#" AutoEventWireup="true" CodeFile="chat.aspx.cs" Inherits="TEProjects_chat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Chat Application</title>
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
		<h1><a href="#">Chat aboutdialog<span>chat</span></a></h1>
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
						<h2>chat</h2>
						<p>Its a program for chat  where you can chat with your friends,customers,clients,etc</p>

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

			<h2>About The chat app</h2>
			<p>Suppose you have to develop a program for chatting application. The following functions have been requested by your Head (The shopkeeper):
1: The program should allow the user to select and chat with that person different items present in that shop.
2: The user should be able to see the items that he has bought and print his total bill on the screen
3: The program should not end until the user specifies it to end. (The user should press 'q' to quit the program)</p>

			<pre>
      import java.awt.*;
      import java.awt.event.*;
      import javax.swing.*;
      /**
       * A simple about dialog.
       * @
       *
       * PUBLIC FEATURES:
       * // Constructors
       *    public AboutDialog(JFrame parent, String title, boolean modal)
       *
       * // Methods
       *    public void actionPerformed(ActionEvent ev)
       *    public void closing()
       *    public void showAbout()
       *    public int addNewCar(Car c)
       *    public void closing()
       *
       * COLLABORATORS:
       *
       * @version 1.0, 16 Oct 2004
       * @author Adam Black
       */
      public class AboutDialog extends JDialog implements ActionListener
      {
      	private JButton okButton = new JButton("OK");
      	private JPanel buttonPanel = new JPanel();
      	private WindowCloser closer = new WindowCloser();

      	/**
      	 * @param parent a parent JFrame to place the dialog on top of
      	 * @param title title of the about dialog
      	 * @param modal modal means focus cannot be taken away from the dialog, non-modal means it can.
      	 */
      	public AboutDialog(JFrame parent, String title, boolean modal)
      	{
      		super(parent, title, modal);
      		Container c = getContentPane();

      		setSize(480, 130);
      		setLocationRelativeTo(parent);
      		addWindowListener(closer);
      		c.setLayout(new GridLayout(3, 1));
      		setTitle(title);
      		buttonPanel.add(okButton);
      		c.add(new JLabel("Cars Sales System by Adam Black", JLabel.CENTER));
      		c.add(new JLabel("SD2, Assignment 2", JLabel.CENTER));
      		c.add(buttonPanel);
      		okButton.addActionListener(this);
      	}

      	/**
      	 * ok button clicked so call the closing method
      	 *
      	 * @param ev ActionEvent object
      	 */
      	public void actionPerformed(ActionEvent ev)
      	{
      		if (ev.getSource() == okButton)
      			closing();
      	}

      	/**
      	 * Hides for from focus, so it can be made visible without needing a new instance
      	 */
      	public void closing()
      	{
      		setVisible(false);
      	}

      	/**
      	 * default method to show about dialog. This ensures it is centred on the parent form. Please
      	 * ensure you do not use the setVisible() method directly, use this one instead.
      	 */
      	public void showAbout()
      	{
      		// center the dialog relative to the parent frame.
      		setLocationRelativeTo(getParent());
      		setVisible(true);
      	}

      	class WindowCloser extends WindowAdapter
      	{
      		/**
      		 * calls the car sales system's main closing event
      		 *
      		 * @param ev WindowEvent object
      		 */
      		public void windowClosing(WindowEvent ev)
      		{
      			closing();
      		}
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
				<li><a href="#"><h2>suyog vaidya</h2></a></li>
        <li><a href="#"><h2>suyogvaidya97@gmail.com</h2></a></li>
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
   
    </form>
</body>
</html>
