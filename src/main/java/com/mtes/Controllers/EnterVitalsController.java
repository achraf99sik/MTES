package com.mtes.Controllers;

import com.mtes.model.Patient;
import com.mtes.model.VitalSigns;
import com.mtes.model.WaitingQueue;
import com.mtes.utils.JPAUtil;
import jakarta.persistence.EntityExistsException;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.UUID;

@WebServlet("/enter-vitals")
public class EnterVitalsController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Double temp = Double.parseDouble(req.getParameter("temperature"));
        String systolic = req.getParameter("systolic");
        String diastolic = req.getParameter("diastolic");
        String bp = systolic +'/'+ diastolic;
        Integer hr = Integer.parseInt(req.getParameter("heartRate"));
        UUID patientId = UUID.fromString(req.getParameter("patientId"));
        Integer rr = Integer.parseInt(req.getParameter("respiratoryRate"));
        Double height = Double.parseDouble(req.getParameter("height"));
        Double weight = Double.parseDouble(req.getParameter("weight"));
        try (EntityManager em = JPAUtil.getEntityManager()) {
            EntityTransaction transaction = em.getTransaction();
            transaction.begin();

            Patient patient = em.find(Patient.class, patientId);
            if (patient == null) {
                throw new IllegalArgumentException("Patient not found: " + patientId);
            }

            VitalSigns vitals = new VitalSigns(bp, hr, temp, rr, weight, height, LocalDateTime.now(), patient);
            WaitingQueue waitingQueue = new WaitingQueue(patient);
            em.persist(vitals);
            em.persist(waitingQueue);

            transaction.commit();
        }catch (EntityExistsException | IllegalArgumentException e){
            System.out.println(e.getMessage());
        }
        resp.sendRedirect("dashboard");
    }
}
