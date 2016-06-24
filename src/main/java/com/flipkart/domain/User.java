package com.flipkart.domain;

import javax.persistence.*;

/**
 * Created by hatim.ali on 21/6/16.
 */

@Entity
@Table(name = "User")
public class User {

    @Id
    @GeneratedValue
    private int id;

    @Column(name = "createdAt")
    private String createdAt;

    @Column(name = "updatedAt")
    private String updatedAt;

    @Column(name = "name")
    private String name;

    @Column(name = "emailId")
    private String email;

    @Column(name = "externalId")
    private int externalId;

    @OneToOne(mappedBy="User", cascade=CascadeType.ALL)
    private Group group;


}
