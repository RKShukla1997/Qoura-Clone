<%-- 
    Document   : Account
    Created on : Nov 20, 2018, 10:02:21 AM
    Author     : rudre
--%>
<% 
    if (session.getAttribute("username") == null) {
        response.sendRedirect("index.html");
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="bootstrap.css">
<link href="https://fonts.googleapis.com/css?family=Barlow+Condensed" rel="stylesheet">
<style type="text/css">
    
.slide1{
  background-image: url('11.jpg');
  height: 500px;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}
.slide2{
  background-image: url('12.jpeg');
  height: 500px;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}
.slide3{
  background-image: url('13.jpeg');
  height: 500px;
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}
.carousel-caption h1{
  font-size: 5.4em;
  font-family: 'Pacifico', cursive;
  padding-bottom: .4em;
}
.carousel-caption p{
  font-size: 2em;
}
</style>
</head>
<body text="black">
<nav class="nav navbar-default navbar-inverse navbar-fixed-top">
<div class="nav navbar-header">
<div class="nav navbar-brand">Ask & Learn</div>
<!--<h7><%//= (String)request.getSession().getAttribute("username")  %></h7>-->
</div>
   
<ul class="nav navbar-nav navbar-right">
  <!-- <h4> <%//= (String)request.getSession().getAttribute("username")  %></h4>-->

   &nbsp &nbsp <!--<li><a href="index.html">Home</a></li>-->
<li><a href="aboutus1.html">About Us</a></li>
<!--<li><a href="login1.html">Login</a></li>
<li><a href="Register.html">Register</a></li>-->
<li><a href="LogoutServlet">Signout</a></li>
</ul>
<div class="navbar-form navbar-left">
<div class="form-group">
<input type="text" class="form-control" placeholder="search">
</div>
</div>
</nav>

   <br><br><br>
   <center><div class="media">
    <div class="media-left">
      <img src="user2.png" class="media-object" style="width:60px">
    </div></center>
    <center><div class="media-body">
      <h4 class="media-heading"><%= (String)request.getSession().getAttribute("username")  %></h4></center>
      <!--<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>-->
      <!--<div class="form ">
<div class="form-group">
<input type="text" class="form-control" placeholder="Ask What you want ">
</div>-->
          
             <center><table><tr><td><a href="AskQuestion.jsp" class="btn btn-primary btn-ms" role="button" type="">Ask a Question</a>
                     </td> 
            <td>
             <a href="Questions.jsp" class="btn btn-primary btn-ms" role="button" type="">Questions Asked</a>
            </td>
                     <td><a href="GiveAnswer.jsp" class="btn btn-primary btn-ms" role="button" type="">Answer a Question</a>
                     </td> 
                     <td>
             <a href="GetAnswer.jsp" class="btn btn-primary btn-ms" role="button" type="">Get Answer</a>
            </td></tr></table></center>
</div></center>
    </div>
  </div>
  <hr>
<br><br><br><br><br>
<div class="container" style="background-image:url('21.jpeg')">
<div class="col-xs-6" style="border-right:2px solid black;">
<h2 style="text-align:center;"><a id="1" href="#" style="text-decoration:none;color:orange;font-weight:bold;"> Power of Knowledge Sharing </a></h2>
<hr>
<br>
<p style="text-align:center;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales pharetra odio porttitor commodo. Phasellus dolor mi, tempor quis tellus nec, elementum pellentesque sapien. Maecenas gravida finibus ante nec dignissim. Nam ut quam elit. Nulla nibh sem, rhoncus accumsan tristique a, blandit sit amet nulla. Nunc mi nunc, fringilla nec viverra nec, ultrices at mi. Donec in nulla egestas, placerat metus at, luctus lacus. Mauris ut nisi ante. Phasellus scelerisque nec sapien ut dapibus. Mauris dignissim gravida nulla, et bibendum est tincidunt quis.</p>
</div>
<div  class="col-xs-6">
<h2 style="text-align:center;"><a id="2" href="#" style="text-decoration:none;color:orange;font-weight:bold;"> Share And Learn</a></h2>
<hr>
<br>
<p style="text-align:center;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sodales pharetra odio porttitor commodo. Phasellus dolor mi, tempor quis tellus nec, elementum pellentesque sapien. Maecenas gravida finibus ante nec dignissim. Nam ut quam elit. Nulla nibh sem, rhoncus accumsan tristique a, blandit sit amet nulla. Nunc mi nunc, fringilla nec viverra nec, ultrices at mi. Donec in nulla egestas, placerat metus at, luctus lacus. Mauris ut nisi ante. Phasellus scelerisque nec sapien ut dapibus. Mauris dignissim gravida nulla, et bibendum est tincidunt quis.</p>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>