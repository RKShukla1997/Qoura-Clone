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
public class AnswerQuestion extends HttpServlet {

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
          

 //int n;
 String c=request.getParameter("answer"); 
 String g=request.getParameter("qid"); 
 String d=request.getSession().getAttribute("username").toString();
 System.out.println("chk1");
 System.out.println(c);
 System.out.println(g);
 System.out.println(d);
 
try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/login_detail?useSSL=false","root","rkshukla12");  
  
PreparedStatement ps=con.prepareStatement(  
"insert into Answers(answer,Q_id,UserName) values(?,?,?)");  
  
ps.setString(1,c);  

ps.setString(2,g);
ps.setString(3,d);
          
int i=ps.executeUpdate();  
if(i>0){
   // RequestDispatcher rd=request.getRequestDispatcher("Account.html");  
       // rd.forward(request,response); 
out.print("Answer Saved...");  
      response.sendRedirect("Account.jsp");
          
}
else
{response.sendRedirect("GetAnswer.jsp");}
}
catch (Exception e2) {System.out.println(e2);}  
          
out.close();  

   }
   
}  
