package controller;

import dto.SearchingDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.SearchingAuthenticator;
//import model.SearchingAuthenticator;

/**
 *
 * @author swayam
 */
public class SearchingChecker extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("login.html");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String tenthpercent = request.getParameter("tenthpercent");
        String twelthpercent = request.getParameter("twelthpercent");
        String cgpa = request.getParameter("cgpa");
        String back = request.getParameter("back");
        
        SearchingDTO sdto = new SearchingDTO();
        sdto.setTenthpercent(tenthpercent);
        sdto.setTwelthpercent(twelthpercent);
        sdto.setBack(back);
        sdto.setCgpa(cgpa);
       
       SearchingAuthenticator sa = new SearchingAuthenticator();
       boolean search = sa.isSearch(sdto);
       if(search)
       {
       HttpSession session = request.getSession(true);
       session.setAttribute("tenthpercent", tenthpercent);
       session.setAttribute("twelthpercent", twelthpercent);
       session.setAttribute("cgpa", cgpa);
       response.sendRedirect("searching.jsp");
       }
       else
       {
          response.sendRedirect("searchstudent.jsp");
       }
       
    }
}
