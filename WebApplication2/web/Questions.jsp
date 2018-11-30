<%-- 
    Document   : Questions
    Created on : Nov 26, 2018, 10:19:58 PM
    Author     : rudre
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions</title>
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
<div>
<form method="post">
<div class="container-fluid">
		<div class="jumbotron" style="background-image:url('20.jpeg');padding:18%;width:100%;">
                    <center><h1 style="color:black;">Questions</h1></center>
<center><table border="2px solid black" width="70%" >
<tr>
<td><p style = "color:white"><b>Q_id</b></p></td>
<td><p style = "color:white"><b>Question</b></p></td>
<td><p style = "color:white"><b>Asked By</b></p></td>
<!--<td>ACTION</td>-->
</tr>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
//String url="jdbc:mysql://localhost/login_detail";
//String username="root";
//String password="rkshukla12";
String query="select * from Questions";
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/login_detail?useSSL=false","root","rkshukla12");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery(query);
while(rs.next())
{

%>
    <tr><td><p style = "color:white"><%=rs.getInt("Q_id") %></p></td>
    <td><p style = "color:white"><%=rs.getString("question") %></p></td>
    <td><p style = "color:white"><%=rs.getString("UserName") %></p></td></tr>
        <%

}
%>
    </table></center>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>
<center><table><tr><td>
<a href="GiveAnswer.jsp" class="btn btn-primary btn-lg" role="button">Answer</a>
</td>
        <td>
<a href="AskQuestion.jsp" class="btn btn-primary btn-lg" role="button">New Question</a>
</td></tr></table></center>
</div>
</div>
</form>

</body>
</html> 


