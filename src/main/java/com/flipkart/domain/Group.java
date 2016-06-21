package com.flipkart.domain;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by hatim.ali on 21/6/16.
 */


@Entity
@Table(name = "Media")
public class Group {

    @Id
    @GeneratedValue
    private int id;

    

}
