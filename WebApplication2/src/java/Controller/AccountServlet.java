package Controller;
import java.io.IOException;  
import java.io.PrintWriter;  
  
import javax.servlet.ServletException;  
import javax.servlet.http.HttpServlet;  
import javax.servlet.http.HttpServletRequest;  
import javax.servlet.http.HttpServletResponse;  
  
public class AccountServlet extends HttpServlet {  
public void doPost(HttpServletRequest request, HttpServletResponse response)  
    throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
    
          
    String n=request.getParameter("username");
    System.out.println("username = " +n);
    request.getSession().setAttribute("username",n);
          response.sendRedirect("Account.jsp");
    out.print("Welcome "+n);  
          
    out.close();  
    }  
  
}  