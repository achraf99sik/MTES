package com.mtes.model;

import com.mtes.enums.RoleName;
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

    private String specialty;
    private Double tariff;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private RoleName role;

    public User() {}
    // login
    public User(String email, String password) {
        this.email = email;
        this.password = password;
    }
    // nurse
    public User(String fullName ,String email, String password, RoleName role){
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.role = role;
    }
    // Genenralist
    public User(String fullName,String email, String password, Double tariff, RoleName role) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.tariff = tariff;
        this.role = role;
    }
    // Specialist
    public User(String fullName,String email, String password, String specialty, RoleName role) {
        this.fullName = fullName;
        this.email = email;
        this.password = password;
        this.specialty = specialty;
        this.role = role;
    }

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
    public RoleName getRole() { return role; }
    public void setRole(RoleName role) { this.role = role; }
}
