package controller;

import dto.AddCompanyDTO;
import dto.AddJobDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AddCompanyAuthenticator;
import model.AddJobAuthenticator;

/**
 *
 * @author swayam
 */
public class AddJobChecker extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("addjob.jsp");
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String jobtitle = request.getParameter("title");
        String selectcompany = request.getParameter("selectcompany");
        String jobtype = request.getParameter("jobtype");
        String skillsrequired = request.getParameter("skillsrequired");
        String city = request.getParameter("city");
        String jobdescription= request.getParameter("jobdescription");
        
        AddJobDTO ajdto = new AddJobDTO();
        
        ajdto.setJobTitle(jobtitle);
        ajdto.setSelectcompany(selectcompany);
        ajdto.setJobtype(jobtype);
        ajdto.setSkillsrequired(skillsrequired);
        ajdto.setCity(city);
        ajdto.setJobdescription(jobdescription);
        
        AddJobAuthenticator aja = new AddJobAuthenticator();
        boolean add = aja.isAdd(ajdto);
        if(add)
        {
           response.sendRedirect("addjob.jsp");
        }
       else
       {
            response.sendRedirect("addjob.jsp");
       }
        
        
    }
}
