package controller;

import dto.LoginDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.LoginAuthenticator;
import model.StudentLoginAuthenticator;

/**
 *
 * @author swayam
 */
public class StudentLoginChecker extends HttpServlet 
{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
       response.sendRedirect("studentlogin.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        LoginDTO ldto= new LoginDTO();
        ldto.setUsername(username);
        ldto.setPassword(password);
        
        StudentLoginAuthenticator sla = new StudentLoginAuthenticator();
        boolean slogin = sla.studentLogin(ldto);
        if(slogin)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);
            response.sendRedirect("studentHome.jsp");
        }
        else
        {
            response.sendRedirect("studentlogin.html");
            out.println("login failed : invalid username or password!");
        }
    }

}
