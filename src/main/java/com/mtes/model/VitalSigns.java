package com.mtes.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "vital_signs")
public class VitalSigns {

    @Id
    @GeneratedValue
    @Column(columnDefinition = "UUID")
    private UUID id;

    private String bloodPressure;
    private Integer heartRate;
    private Double temperature;
    private Integer respiratoryRate;
    private Double weight;
    private Double height;
    private LocalDateTime createdAt = LocalDateTime.now();

    @ManyToOne
    @JoinColumn(name = "patient_id")
    private Patient patient;

    public VitalSigns() {}

    public UUID getId() { return id; }
    public String getBloodPressure() { return bloodPressure; }
    public void setBloodPressure(String bloodPressure) { this.bloodPressure = bloodPressure; }
    public Integer getHeartRate() { return heartRate; }
    public void setHeartRate(Integer heartRate) { this.heartRate = heartRate; }
    public Double getTemperature() { return temperature; }
    public void setTemperature(Double temperature) { this.temperature = temperature; }
    public Integer getRespiratoryRate() { return respiratoryRate; }
    public void setRespiratoryRate(Integer respiratoryRate) { this.respiratoryRate = respiratoryRate; }
    public Double getWeight() { return weight; }
    public void setWeight(Double weight) { this.weight = weight; }
    public Double getHeight() { return height; }
    public void setHeight(Double height) { this.height = height; }
    public LocalDateTime getCreatedAt() { return createdAt; }
    public Patient getPatient() { return patient; }
    public void setPatient(Patient patient) { this.patient = patient; }
}
