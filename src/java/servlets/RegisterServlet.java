/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.*;
import services.*;
import utilities.*;

/**
 *
 * @author Hussein
 */
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User u = (User) session.getAttribute("loggedUser");
        String logout = request.getParameter("logout");
        if (logout != null) {
            session.invalidate(); // just by going to the login page the user is logged out :-) 
            getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
        }
        if (u == null) { // if no user logged in, they can go to this page
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
        } else { //if user logged in send them home
            //getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
            response.sendRedirect("/home");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equals("register")) {
            String firstname = request.getParameter("first name");
            String lastname = request.getParameter("last name");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String password = request.getParameter("password");
            User u = new User();
            u.setFirstname(firstname);
            u.setLastname(lastname);
            u.setEmailAddress(email);
            u.setPhoneNumber(phone);
            u.setPassword(password);
            RoleService rs = new RoleService();
            u.setRoleid(rs.get(1));
            UserService us = new UserService();
            String message = "";
            try {
                message = us.insert(u);
            } catch (Exception ex) {
                Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (!message.equals("Account created!")) {
                request.setAttribute("firstname", firstname);
                request.setAttribute("lastname", lastname);
                request.setAttribute("email", email);
                request.setAttribute("phone", phone);
                request.setAttribute("message", message);
                getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
                return;
            }

            try {
                u = us.getByEmail(email);
                if (u.getIsValid() == 2) {
                    request.setAttribute("validation", "We have sent a validation link to your email.  Please click on it to validate your account!  "
                            + "Please allow some time for it to arrive or check your spam!");
                    String templatePath = getServletContext().getRealPath("/WEB-INF/emailTemplate/sendValidation.jsp");
                    ValidateTokensService vts = new ValidateTokensService();
                    vts.sendToken(u, templatePath);
                }
            } catch (Exception ex) {
                Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            getServletContext().getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);

        }
    }

}
