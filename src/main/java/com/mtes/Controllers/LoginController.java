package com.mtes.Controllers;

import com.mtes.enums.RoleName;
import com.mtes.model.Role;
import com.mtes.utils.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
        System.out.println(email);

        EntityManager em = JPAUtil.getEntityManager();
        System.out.println("Tables should now be created in your PostgreSQL database!");
        em.close();
        JPAUtil.close();



        //if ("admin@example.com".equals(email)) {
        //  req.setAttribute("username", email);
        //      req.getRequestDispatcher("/views/dashboard.jsp").forward(req, resp);
        //} else {
        //    resp.sendRedirect("Views/error.jsp");
        //}
    }
}