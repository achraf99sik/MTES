package com.mtes.model;

import com.mtes.enums.ConsultationStatus;
import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "consultations")
public class Consultation {

    @Id
    @GeneratedValue
    @Column(columnDefinition = "UUID")
    private UUID id;

    private String reason;
    private String observations;
    private String diagnosis;
    private String treatment;

    @Enumerated(EnumType.STRING)
    private ConsultationStatus status = ConsultationStatus.WAITING_FOR_SPECIALIST;

    private LocalDateTime createdAt = LocalDateTime.now();

    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;

    @ManyToOne
    @JoinColumn(name = "generalist_id")
    private User generalist;

    public Consultation() {}

    public UUID getId() { return id; }
    public String getReason() { return reason; }
    public void setReason(String reason) { this.reason = reason; }
    public String getObservations() { return observations; }
    public void setObservations(String observations) { this.observations = observations; }
    public String getDiagnosis() { return diagnosis; }
    public void setDiagnosis(String diagnosis) { this.diagnosis = diagnosis; }
    public String getTreatment() { return treatment; }
    public void setTreatment(String treatment) { this.treatment = treatment; }
    public ConsultationStatus getStatus() { return status; }
    public void setStatus(ConsultationStatus status) { this.status = status; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public Patient getPatient() { return patient; }
    public void setPatient(Patient patient) { this.patient = patient; }
    public User getGeneralist() { return generalist; }
    public void setGeneralist(User generalist) { this.generalist = generalist; }
}
