package com.example.Pizzeria.repositories;

import com.example.Pizzeria.models.Product;
import com.example.Pizzeria.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import com.example.Pizzeria.models.Cart;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional
public interface CartRepository extends JpaRepository<Cart, Long> {

    List<Cart> findByProduct(Product product);


    List<Cart> findByUser(User userByPrincipal);

    void deleteByUser(User userByPrincipal);
}
