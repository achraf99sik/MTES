package com.mtes.Controllers;

import com.mtes.model.Consultation;
import com.mtes.model.Patient;
import com.mtes.model.User;
import com.mtes.utils.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityNotFoundException;
import jakarta.persistence.EntityTransaction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Transaction;

import java.io.IOException;
import java.util.UUID;

@WebServlet("/create-consultation")
public class CreateConsultation extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UUID patientId = UUID.fromString(req.getParameter("patientId"));
        String reason = req.getParameter("reason");
        String observations = req.getParameter("observations");
        String diagnosis = req.getParameter("diagnosis");
        String treatment = req.getParameter("treatment");
        try(EntityManager em = JPAUtil.getEntityManager()){
            Patient patient = em.find(Patient.class, patientId);
            User generalist = (User) req.getSession(false).getAttribute("user");
            Consultation consultation = new Consultation(reason, observations, diagnosis, treatment, patient, generalist);
            System.out.println(consultation.toString());
            EntityTransaction tx = em.getTransaction();
            tx.begin();
            em.persist(consultation);
            tx.commit();
            resp.sendRedirect("dashboard");
        }catch (EntityNotFoundException e){
            System.out.println(e.getMessage());
        }
    }
}
