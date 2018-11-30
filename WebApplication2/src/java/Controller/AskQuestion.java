/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rudre
 */
public class AskQuestion extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   public void doPost(HttpServletRequest request, HttpServletResponse response)  
            throws ServletException, IOException {  
  
response.setContentType("text/html");  
PrintWriter out = response.getWriter();  
          
String c=request.getParameter("question");  
 //int n;
 String g=request.getSession().getAttribute("username").toString(); 
 
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/login_detail?useSSL=false","root","rkshukla12");  
  
PreparedStatement ps=con.prepareStatement(  
"insert into Questions(question,UserName) values(?,?)");  
  
ps.setString(1,c);  

ps.setString(2,g);

          
int i=ps.executeUpdate();  
if(i>0){
   // RequestDispatcher rd=request.getRequestDispatcher("Account.html");  
       // rd.forward(request,response); 
out.print("Question Saved...");  
      response.sendRedirect("Questions.jsp");
          
}
else
{response.sendRedirect("Account.jsp");}
}
catch (Exception e2) {System.out.println(e2);}  
          
out.close();  

   }
   
}  

    
