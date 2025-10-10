package com.mtes.Controllers;

import com.mtes.model.User;
import com.mtes.utils.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;

@WebServlet("/login")
public class LoginController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setAttribute("title", "Login");
        request.getRequestDispatcher("Views/LoginView.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String hashed = BCrypt.hashpw(password, BCrypt.gensalt());

        try (EntityManager em = JPAUtil.getEntityManager()) {
            User user = null;
            user = em.createQuery("SELECT u FROM User u WHERE u.email = :email", User.class)
                    .setParameter("email", email)
                    .getSingleResult();


            if (BCrypt.checkpw(password, user.getPassword())) {
                System.out.println("Login successful!");
                req.getSession().setAttribute("user", user);
                resp.sendRedirect("dashboard");
            } else {
                req.setAttribute("error", "Invalid password");
                req.getRequestDispatcher("Views/LoginView.jsp").forward(req, resp);
            }
        } catch (NoResultException e) {
            req.setAttribute("error", "User not found!");
            req.getRequestDispatcher("Views/LoginView.jsp").forward(req, resp);
        }
    }
}