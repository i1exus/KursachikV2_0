package com.example.kursachik.entity.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ProfileDto {
    private Long id;


    private String name;
    private String surname;
    private String patronymic;
    private String email;
    private String phone;
}
