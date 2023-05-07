package com.example.kursachik.repository;

import com.example.kursachik.entity.domain.RealEstateToBuy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RealEstateToBuyRepository extends JpaRepository<RealEstateToBuy, Long> {

}
