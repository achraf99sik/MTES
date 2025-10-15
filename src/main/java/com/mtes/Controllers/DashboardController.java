package com.mtes.Controllers;

import com.mtes.model.Patient;
import com.mtes.model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/dashboard")
public class DashboardController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("user") != null) {
            User user = (User) session.getAttribute("user");
            Patient patient = (Patient) session.getAttribute("patient");
            request.setAttribute("user", user);
            if(patient != null) {
                request.setAttribute("patient", patient);
            }
            switch (user.getRole()) {
                case GENERALIST -> {
                    request.setAttribute("title", "Generalist Dashboard");
                    request.getRequestDispatcher("Views/Dashboard/GPDashboardView.jsp").forward(request, response);
                }
                case NURSE -> {
                    request.setAttribute("title", "Nurse Dashboard");
                    request.getRequestDispatcher("Views/Dashboard/NurseDashboardView.jsp").forward(request, response);
                }
                case SPECIALIST -> {
                    request.setAttribute("title", "Specialist Dashboard");
                    request.getRequestDispatcher("Views/Dashboard/SpecialistDashboardView.jsp").forward(request, response);
                }
            }
        } else {
            response.sendRedirect("login");
        }
    }
}
