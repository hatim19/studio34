package com.flipkart.domain;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by hatim.ali on 21/6/16.
 */


@Entity
@Table(name = "Role")
public class Role {

    @Id
    @GeneratedValue
    private int id;

    @Column(name = "role")
    private int role;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "Role")
    @JsonManagedReference
    private List<Group> groups = new ArrayList<Group>() ;
}
