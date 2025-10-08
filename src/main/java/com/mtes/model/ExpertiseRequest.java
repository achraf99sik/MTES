package com.mtes.model;

import com.mtes.enums.ExpertiseStatus;
import com.mtes.enums.Priority;
import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "expertise_requests")
public class ExpertiseRequest {

    @Id
    @GeneratedValue
    @Column(columnDefinition = "UUID")
    private UUID id;

    private String specialty;
    private String question;
    private String response;

    @Enumerated(EnumType.STRING)
    private Priority priority;

    @Enumerated(EnumType.STRING)
    private ExpertiseStatus status = ExpertiseStatus.PENDING;

    private LocalDateTime createdAt = LocalDateTime.now();

    @ManyToOne
    @JoinColumn(name = "consultation_id")
    private Consultation consultation;

    @ManyToOne
    @JoinColumn(name = "generalist_id")
    private User generalist;

    @ManyToOne
    @JoinColumn(name = "specialist_id")
    private User specialist;

    public ExpertiseRequest() {}

    public UUID getId() { return id; }
    public String getSpecialty() { return specialty; }
    public void setSpecialty(String specialty) { this.specialty = specialty; }
    public String getQuestion() { return question; }
    public void setQuestion(String question) { this.question = question; }
    public String getResponse() { return response; }
    public void setResponse(String response) { this.response = response; }
    public Priority getPriority() { return priority; }
    public void setPriority(Priority priority) { this.priority = priority; }
    public ExpertiseStatus getStatus() { return status; }
    public void setStatus(ExpertiseStatus status) { this.status = status; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public Consultation getConsultation() { return consultation; }
    public void setConsultation(Consultation consultation) { this.consultation = consultation; }
    public User getGeneralist() { return generalist; }
    public void setGeneralist(User generalist) { this.generalist = generalist; }
    public User getSpecialist() { return specialist; }
    public void setSpecialist(User specialist) { this.specialist = specialist; }
}
