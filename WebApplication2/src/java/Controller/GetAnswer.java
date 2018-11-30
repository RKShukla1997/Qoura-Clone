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
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author rudre
 */
public class GetAnswer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           Class.forName("com.mysql.jdbc.Driver");  
           Connection con=DriverManager.getConnection(  
           "jdbc:mysql://localhost:3306/login_detail?useSSL=false","root","rkshukla12");  
      
           PreparedStatement ps=con.prepareStatement(  
           "select * from answers where Q_id=?");  
           ps.setString(1,request.getParameter("qid"));  
          // ps.setString(2,pass);  

           System.out.println("chk 1");
          ResultSet rs=ps.executeQuery();  
          rs.next();
          String s = rs.getString(2);
           String sr = rs.getString(3);
          String se = rs.getString(4);
          request.setAttribute("answer",s);
          request.setAttribute("UserName",se);
          System.out.println("chk 1.1");
           System.out.println(s);
           System.out.println(sr);
           System.out.println(se);
           
           RequestDispatcher rd = request.getRequestDispatcher("Answerdisplay.jsp");
           rd.forward(request,response);
        }
        catch(Exception e){
            System.out.print(e);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
