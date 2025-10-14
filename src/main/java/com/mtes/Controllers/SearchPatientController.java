package com.mtes.Controllers;

import com.mtes.model.Patient;
import com.mtes.utils.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.NoResultException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/search-patient")
public class SearchPatientController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String ssn = req.getParameter("ssn");
        if (ssn == null || ssn.trim().isEmpty()) {
            req.getSession().setAttribute("error", "Please enter a social security number.");
            res.sendRedirect("dashboard");
            return;
        }
        try (EntityManager em = JPAUtil.getEntityManager()){
            Patient patient = null;

            patient = em.createQuery("SELECT P FROM Patient P WHERE socialSecurityNumber = :ssn", Patient.class)
            .setParameter("ssn", ssn).getSingleResult();

            req.getSession().setAttribute("patient", patient);

        } catch (NoResultException e){
            req.getSession().setAttribute("error", "No patient with this social security number was found!");
        } catch (Exception e){
            req.getSession().setAttribute("error", e.getMessage());
        }
        res.sendRedirect("dashboard");
    }
}
