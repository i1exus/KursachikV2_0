package com.example.kursachik.entity.domain;

import com.example.kursachik.service.user.RealEstateToBuyService;
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
public class RealEstateToBuy implements RealEstateToBuyService {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "username", referencedColumnName = "username")
    private Profile profile;

    private String nameofestate;
    private String city;
    private String adress;
    private Date date;
    private String owner;
    private byte[] preview;
    private float price;
    private int countroom;
    private float square;

}
