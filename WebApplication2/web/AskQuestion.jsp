
<%-- 
    Document   : AskQusetion
    Created on : Nov 21, 2018, 1:57:33 PM
    Author     : rudre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<style>
			body {
				margin:0;
			}
			p {
				margin-left:26%;
			}
			.header {
				background-color:#8000ff;
				border-bottom: 2px solid orange;
			}
			.header ul {
				list-style: none;
    				margin-top: -2%;
    				margin-left: 68%;
    				margin-bottom: 0;
			}
			.header ul li {
				display: inline;
				padding:10px;
			}
			.header h1 {
				margin: 0;
				width: 41%;
				color: white;
			}
			a {
				text-decoration: none;
				color: white;
			}
			a:hover {
				color: orange;
			}
		</style>
		
		<link rel="stylesheet" type="text/css" href="bootstrap.css">
	</head>
	<body style="background:#f1f1f1;">
		<nav class="nav navbar-default navbar-inverse  navbar-fixed-top">
<div class="nav navbar-header">
<div class="nav navbar-brand">Ask & Learn</div>
</div>
<!--<ul class="nav navbar-nav navbar-right">
<li><a href="index.html">Home</a></li>
<li><a href="aboutus1.html">About Us</a></li>
<li><a href="login1.html">Login</a></li>
<li><a href="#">Register</a></li>
<!--<li><a href="Signout1.html">Signout</a></li>-->
<!--</ul>-->

<div class="navbar-form navbar-left">
<div class="form-group">
<input type="text" class="form-control" placeholder="search">
</div>
</div>
</nav>
<div class="container-fluid">
		<div class="jumbotron" style="background-image:url('20.jpeg');padding:18%;width:100%;">
		
		<center><h1 style="color:black;">Ask ?</h1></center>
		<form action="AskQuestion" method="post" style="border:2px solid orange;width:40%;margin-left:32%;padding:0px">
                    <table style="color:black;border:0px" >
			<TR>
			<TD><b>Topic: </b></TD> <TD><input type="text" name="topic" required><br><br></TD>
			</TR>
                        
                        <TR>
			<TD><b>Sub-Topic: </b></TD> <TD><input type="text" name="subtopic" required><br><br></TD>
			</TR>
			<TR>
			<TD><b>Ask Your Question: </b></TD> <TD><input type="text" name="question" required><br><br></TD>
			</TR>
			<TR>
			<TD><b>UserName: </b></TD> <TD><input type="text" name="userName" value="<%= (String)request.getSession().getAttribute("username")  %>" disabled><br><br></TD>
			</TR>
			
			<!--<p style="color:black;">Topic: <input type="text" ></p>
			<p style="color:black;">Sub-Topic: <input type="text" name="subtopic" required></p>
			<p style="color:black;">Ask Your Question: <input type="text" name="question" required></p>
			
			<p style="color:black;"> UserName:<input type="text" name="userName" required></p>-->
			
                        
			<!--<p><center><input type="submit" value="submit"></center>-->
                        
                        <tr><td colspan="5"><center>
                        <input class="btn btn-primary btn-lg" type="submit" value="Submit"/>
                        </center></td></tr>
		</form>
		</div>
		</div>
		
	</body>
</html>
