package com.example.Pizzeria.repositories;

import com.example.Pizzeria.models.Order;
import com.example.Pizzeria.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
public interface OrderRepository extends JpaRepository<Order, Long> {

    List<Order> findByUser(User userByPrincipal);
}
