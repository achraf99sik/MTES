package com.mtes.model;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "time_slots")
public class TimeSlot {

    @Id
    @GeneratedValue
    @Column(columnDefinition = "UUID")
    private UUID id;

    private LocalDateTime startTime;
    private LocalDateTime endTime;
    private Boolean available = true;

    @ManyToOne
    @JoinColumn(name = "specialist_id")
    private User specialist;

    public TimeSlot() {}

    public UUID getId() { return id; }
    public LocalDateTime getStartTime() { return startTime; }
    public void setStartTime(LocalDateTime startTime) { this.startTime = startTime; }
    public LocalDateTime getEndTime() { return endTime; }
    public void setEndTime(LocalDateTime endTime) { this.endTime = endTime; }
    public Boolean getAvailable() { return available; }
    public void setAvailable(Boolean available) { this.available = available; }
    public User getSpecialist() { return specialist; }
    public void setSpecialist(User specialist) { this.specialist = specialist; }
}
