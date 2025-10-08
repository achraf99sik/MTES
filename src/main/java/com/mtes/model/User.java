package com.mtes.model;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "users")
public class User {

    @Id
    @GeneratedValue
    @Column(columnDefinition = "UUID")
    private UUID id;

    @Column(nullable = false)
    private String fullName;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private String password;

    private String specialty; // For specialists only
    private Double tariff; // For specialists only

    @ManyToOne
    @JoinColumn(name = "role_id")
    private Role role;

    public User() {}

    public UUID getId() { return id; }
    public String getFullName() { return fullName; }
    public void setFullName(String fullName) { this.fullName = fullName; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }
    public String getSpecialty() { return specialty; }
    public void setSpecialty(String specialty) { this.specialty = specialty; }
    public Double getTariff() { return tariff; }
    public void setTariff(Double tariff) { this.tariff = tariff; }
    public Role getRole() { return role; }
    public void setRole(Role role) { this.role = role; }
}
