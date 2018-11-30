<%-- 
    Document   : GiveAnswer
    Created on : Nov 27, 2018, 9:55:29 AM
    Author     : rudre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

<div class="navbar-form navbar-left">
<div class="form-group">
<input type="text" class="form-control" placeholder="search">
</div>
</div>
</nav>
    <div class="container-fluid">
		<div class="jumbotron" style="background-image:url('25.jpg');padding:20%;width:100%;">
		<center><h1 style="color:black;">Write Your Answer!</h1></center>
		<form method = "post" action= "AnswerQuestion" style="border:2px solid orange;width:40%;margin-left:32%;">
			<p style="color:black;"><b>Enter the Q_id</b><input type="textarea" cols='8' rows='8' name="qid" required></p>
			<p style="color:black;"><b>Enter your Answer</b><input type="text" name="answer" ></p>
                        <p style="color:black;"><b>UserName</b><input type="text" cols='3' rows='3' value="<%= (String)request.getSession().getAttribute("username")  %>" name="userName" disabled></p>
			<center><p>
                        <input class="btn btn-primary btn-lg" type="submit" value="Submit"/>
                        </p></center>
		</form>
		</div>
		</div>        
</body>
</html>