package com.example.Pizzeria.controllers;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import com.example.Pizzeria.services.CartService;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;

@Transactional
@Controller
@RequiredArgsConstructor
public class CartController {
    private final CartService cartService;

    @GetMapping("/cart")
    public String cart(Principal principal, Model model) {
        model.addAttribute("carts", cartService.getCartsByUser(principal));
        return "cart";
    }

    @PostMapping("/cart/add")
    public String addToCart(@RequestParam(name="productId") Long productId, Principal principal) {
        cartService.saveCart(principal, productId);
        return "redirect:/";
    }

    @PostMapping("/cart/delete")
    public String deleteFromCart(@RequestParam(name="productId") Long productId, Principal principal) {
        cartService.deleteCart(principal, productId);
        return "redirect:/";
    }
}
