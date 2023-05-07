package com.example.kursachik.repository;

import com.example.kursachik.entity.domain.RealEstateForRent;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RealEstateForRentRepository extends JpaRepository<RealEstateForRent, Long> {

}
