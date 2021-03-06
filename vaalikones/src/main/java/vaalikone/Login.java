package vaalikone;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class Login extends HttpServlet {
 

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        //Saadaan parametrit login.jsp sivulta
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        
        //käytetään käyttäjätunnukset validointiohjelmassa, jos menee läpi niin ohjataan admin sivulle
        if(Validate.checkUser(email, pass))
        {
            RequestDispatcher rs = request.getRequestDispatcher("AdminPage.jsp");
            rs.forward(request, response);
        }
        //jos käyttäjätunnukset ei täsmää niin näytetään "error" viesti
        else
        {
           out.println("Väärä sähköpostiosoite tai salasana!");
           RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
           rs.include(request, response);
        }
    }  
}