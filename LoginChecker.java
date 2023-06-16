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

/**
 *
 * @author swayam
 */
public class LoginChecker extends HttpServlet 
{

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.html");
    }
    
     public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        PrintWriter out = response.getWriter();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        LoginDTO ldto= new LoginDTO();
        ldto.setUsername(username);
        ldto.setPassword(password);
        
        LoginAuthenticator la = new LoginAuthenticator();
        boolean login = la.isLogin(ldto);
        if(login)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("username", username);
            response.sendRedirect("home.jsp");
        }
        else
        {
            response.sendRedirect("login.html");
            out.println("login failed : invalid username or password!");
        }
    }
 
}
