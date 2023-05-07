package com.example.kursachik.entity.dto;

import lombok.*;

import javax.persistence.*;
import java.sql.Date;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table
public class RealEstateForRentDto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nameofestate;
    private String city;
    private String adress;
    private Date date;
    private String owner;
    private byte[] preview;
    private float price;
    private int countroom;
    private float square;
    private String time ;
    private String descriptionforwhom;

}
