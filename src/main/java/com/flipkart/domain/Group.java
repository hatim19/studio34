package com.flipkart.domain;

import com.fasterxml.jackson.annotation.JsonBackReference;

import javax.persistence.*;

/**
 * Created by hatim.ali on 21/6/16.
 */


@Entity
@Table(name = "Group")
public class Group {

    @Column(name = "name")
    private String name;

    @Id
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name="userId", referencedColumnName = "id")
    private User user;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id", nullable = false,referencedColumnName = "groupId")
    @JsonBackReference
    private Role role;

}
