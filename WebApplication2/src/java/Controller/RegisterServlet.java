
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;  
import java.sql.*;  
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;  
import javax.servlet.http.*;  

public class RegisterServlet extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String c=request.getParameter("fname");  
String d=request.getParameter("lname");  
String e=request.getParameter("contact");  
 String f=request.getParameter("userEmail"); 
 String g=request.getParameter("userName"); 
 String h=request.getParameter("userPass"); 
 String k=request.getParameter("gender"); 
 String j=request.getParameter("qualification"); 
          
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/login_detail?useSSL=false","root","rkshukla12");  
  
PreparedStatement ps=con.prepareStatement(  
"insert into logindata(FirstName,LastName,ContactNo,Email,UserName,Password,Gender,Qualification) values(?,?,?,?,?,?,?,?)");  
  
ps.setString(1,c);  
ps.setString(2,d);  
ps.setString(3,e);  
ps.setString(4,f);
ps.setString(5,g);
ps.setString(6,h);
ps.setString(7,k);
ps.setString(8,j);
          
int i=ps.executeUpdate();  
if(i>0){
   // RequestDispatcher rd=request.getRequestDispatcher("Account.html");  
       // rd.forward(request,response); 
out.print("You are successfully registered...");  
      response.sendRedirect("login1.html");
          
}
else
{response.sendRedirect("Register.html");}
}
catch (Exception e2) {System.out.println(e2);}  
          
out.close();  


}  
  
}  