package com.mtes.model;

import com.mtes.enums.WaitingStatus;
import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "waiting_queue")
public class WaitingQueue {

    @Id
    @GeneratedValue
    @Column(columnDefinition = "UUID")
    private UUID id;

    private LocalDateTime arrivalTime = LocalDateTime.now();

    @Enumerated(EnumType.STRING)
    private WaitingStatus status = WaitingStatus.WAITING;

    @OneToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;

    public WaitingQueue() {}

    public UUID getId() { return id; }
    public LocalDateTime getArrivalTime() { return arrivalTime; }
    public WaitingStatus getStatus() { return status; }
    public void setStatus(WaitingStatus status) { this.status = status; }
    public Patient getPatient() { return patient; }
    public void setPatient(Patient patient) { this.patient = patient; }
}
