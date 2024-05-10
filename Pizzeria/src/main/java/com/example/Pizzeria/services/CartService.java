package com.example.Pizzeria.services;

import com.example.Pizzeria.models.Cart;
import com.example.Pizzeria.models.Product;
import com.example.Pizzeria.models.User;
import com.example.Pizzeria.repositories.ProductRepository;
import com.example.Pizzeria.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import com.example.Pizzeria.repositories.CartRepository;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CartService {
    private final CartRepository cartRepository;
    private final UserRepository userRepository;
    private final ProductRepository productRepository;


    public void saveCart(Principal principal, Long id) {
        if (cartRepository.findByProduct(getProductById(id)).isEmpty()) {
            Cart cart1 = new Cart();
            cart1.setUser(getUserByPrincipal(principal));
            cart1.setProduct(getProductById(id));
            cart1.setCount(1);
            cartRepository.save(cart1);
        }else{
            Cart cart2 = cartRepository.findByProduct(getProductById(id)).get(0);
            cart2.setCount(cart2.getCount() + 1);
            cartRepository.save(cart2
            );
        }
    }

    public void deleteCart(Principal principal, Long id) {
        if (cartRepository.findByProduct(getProductById(id)) != null) {
            if (cartRepository.findByProduct(getProductById(id)).get(0).getCount() > 1) {
                Cart cart = cartRepository.findByProduct(getProductById(id)).get(0);
                cart.setCount(cart.getCount() - 1);
                cartRepository.save(cart);
            }else{
                cartRepository.delete(cartRepository.findByProduct(getProductById(id)).get(0));
            }
        }
    }

    private User getUserByPrincipal(Principal principal) {
        if (principal == null) return new User();
        return userRepository.findByEmail(principal.getName());
    }

    private Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null);
    }

    public List<Cart> getCartsByUser(Principal principal){
        if (principal == null) return new ArrayList<>();
        return cartRepository.findByUser(getUserByPrincipal(principal));
    }

    public void deleteAllCarts(Principal principal) {
        cartRepository.deleteByUser(getUserByPrincipal(principal));
    }
}
