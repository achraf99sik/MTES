package com.mtes.model;

import com.mtes.enums.RoleName;
import jakarta.persistence.*;
import org.hibernate.annotations.GenericGenerator;

import java.util.UUID;

@Entity
@Table(name = "roles")
public class Role {

    @Id
    @GeneratedValue
    @Column(columnDefinition = "UUID")
    private UUID id;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private RoleName name;

    public Role() {}
    public Role(RoleName name) { this.name = name; }

    public UUID getId() { return id; }
    public RoleName getName() { return name; }
    public void setName(RoleName name) { this.name = name; }
}
