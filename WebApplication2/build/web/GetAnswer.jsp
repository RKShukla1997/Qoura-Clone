<%-- 
    Document   : GetAnswer
    Created on : Nov 27, 2018, 9:52:29 AM
    Author     : rudre
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>


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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Answer</title>
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
</nav><br><br><br>



<!--<td>ACTION</td>-->

<div class="container-fluid" style="background-image:url('21.jpeg');padding:20%;width:100%;">
		<!--<div class="jumbotron" style="background-image:url('21.jpeg');padding:10%;width:100%;">-->
		<center><h1 style="color:black;">Your Answer!</h1></center>
		<form method = "post" action= "GetAnswer" style="border:2px solid orange;width:37%;margin-left:32%;">
			<p style="color:black;"><b>Enter the Q_id</b><input type="text"  name="qid" required></p>
                        
			<center><p>
                        <input class="btn btn-primary btn-lg" type="submit" value="Submit"/>
                        </p></center>
		</form>
             <!--</div>-->
		
</tr>
    
   
   


</div>


</body>
</html> 

