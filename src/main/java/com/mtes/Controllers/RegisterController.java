package com.mtes.Controllers;

import com.mtes.enums.RoleName;
import com.mtes.model.User;
import com.mtes.utils.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.mindrot.jbcrypt.BCrypt;

import java.io.IOException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setAttribute("title", "Register");
        request.getRequestDispatcher("Views/RegisterView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String speciality = req.getParameter("specialty");
        String tariffStr = req.getParameter("tariff");
        String roleParam = req.getParameter("role");

        String error = null;

        if (fullName == null || fullName.trim().isEmpty()) {
            error = "Full name is required.";
        }

        else if (email == null || !email.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$")) {
            error = "Invalid email format.";
        }

        else if (password == null || password.length() < 6) {
            error = "Password must be at least 6 characters long.";
        } else if (!password.equals(confirmPassword)) {
            error = "Passwords do not match.";
        }

        else if (roleParam == null || roleParam.isEmpty()) {
            error = "Role is required.";
        }

        else if (roleParam.equalsIgnoreCase("DOCTOR")) {
            if (tariffStr == null || tariffStr.isEmpty()) {
                error = "Tariff is required for doctors.";
            } else {
                try {
                    double tariff = Double.parseDouble(tariffStr);
                    if (tariff <= 0) error = "Tariff must be a positive number.";
                } catch (NumberFormatException e) {
                    error = "Tariff must be a valid number.";
                }
            }
        }

        if (error != null) {
            req.setAttribute("error", error);
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
            return;
        }

        RoleName role = RoleName.valueOf(roleParam.toUpperCase());
        String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());
        User newUser = null;
        switch (role) {
            case NURSE -> newUser = new User(fullName, email, hashedPassword, role);
            case GENERALIST -> newUser = new User(fullName, email, hashedPassword, Double.parseDouble(tariffStr), role);
            case SPECIALIST -> newUser = new User(fullName, email, hashedPassword, speciality, role);
        }

        EntityManager em = JPAUtil.getEntityManager();
        em.getTransaction().begin();

        try {
            em.persist(newUser);
            em.getTransaction().commit();
            System.out.printf(newUser.getPassword());
            resp.sendRedirect( "/login");
        } catch (Exception e) {
            em.getTransaction().rollback();
            req.setAttribute("error", "Registration failed. Email may already exist.");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
        } finally {
            em.close();
        }
    }
}
