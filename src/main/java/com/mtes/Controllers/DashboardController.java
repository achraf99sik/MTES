package com.mtes.Controllers;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/dashboard")
public class DashboardController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setAttribute("title", "Dashboard");
        request.getRequestDispatcher("Views/Dashboard/SpecialistDashboardView.jsp").forward(request, response);
    }
}
