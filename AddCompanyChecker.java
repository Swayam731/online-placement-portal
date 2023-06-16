package controller;

import dto.AddCompanyDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AddCompanyAuthenticator;

/**
 *
 * @author swayam
 */
public class AddCompanyChecker extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("addcompany.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String website = request.getParameter("website");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String country = request.getParameter("country");
        String address = request.getParameter("address");
        String description= request.getParameter("description");
        
        AddCompanyDTO acdto = new AddCompanyDTO();
        
        acdto.setName(name);
        acdto.setEmail(email);
        acdto.setContact(contact);
        acdto.setWebsite(website);
        acdto.setCity(city);
        acdto.setState(state);
        acdto.setCountry(country);
        acdto.setAddress(address);
        acdto.setDescription(description);
        
        AddCompanyAuthenticator aca = new AddCompanyAuthenticator();
        boolean add = aca.isAdd(acdto);
        if(add)
        {
           response.sendRedirect("addcompany.jsp");
        }
       else
       {
            response.sendRedirect("addcompany.jsp");
       }
        
        
    }
    
}
