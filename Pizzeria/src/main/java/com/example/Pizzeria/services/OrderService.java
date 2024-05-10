package com.example.Pizzeria.services;

import com.example.Pizzeria.models.Cart;
import com.example.Pizzeria.models.Order;
import com.example.Pizzeria.models.User;
import com.example.Pizzeria.repositories.OrderRepository;
import com.example.Pizzeria.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderService {
    private final OrderRepository orderRepository;
    private final UserRepository userRepository;

    public void saveOrder(Principal principal, String items) {
        Order order = new Order();
        order.setUser(getUserByPrincipal(principal));
        order.setItems(items);
        orderRepository.save(order);
    }

    private User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    public List<Order> getOrdersByUser(Principal principal) {
        return orderRepository.findByUser(getUserByPrincipal(principal));
    }

}
