package com.devpro.java08blog.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.java08blog.entites.Rate;

@Repository
public interface RateRepository extends JpaRepository<Rate, Integer> {

}
