package controller;

import dto.ApplyJobDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.ApplyJobAuthenticator;

/**
 *
 * @author swayam
 */
public class ApplyJobChecker extends HttpServlet 
{

    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        response.sendRedirect("jobapply.jsp");
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String name = request.getParameter("name");
        String enrollment = request.getParameter("enrollment");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String skills = request.getParameter("skills");
        String tenthper = request.getParameter("tenth"); 
        String twelthper = request.getParameter("twelth"); 
        String back = request.getParameter("back");
        
        ApplyJobDTO ajdto = new ApplyJobDTO();
        ajdto.setName(name);
        ajdto.setEnrollment(enrollment);
        ajdto.setEmail(email);
        ajdto.setContact(contact);
        ajdto.setSkills(skills);
        ajdto.setTenth(tenthper);
        ajdto.setTwelth(twelthper);
        ajdto.setBack(back);
        
        ApplyJobAuthenticator aja = new ApplyJobAuthenticator();
        boolean apply = aja.isApply(ajdto);
        if(apply)
        {
            response.sendRedirect("jobapply.jsp");
        }
        
    }

}
