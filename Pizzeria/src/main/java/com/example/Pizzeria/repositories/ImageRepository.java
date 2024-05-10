package com.example.Pizzeria.repositories;

import com.example.Pizzeria.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface ImageRepository extends JpaRepository<Image, Long> {

    List<Image> findAllByProductId(Long productId);
}
