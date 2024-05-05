package com.example.Pizzeria.services;

import com.example.Pizzeria.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private long ID = 0;
    private List<Product> products = new ArrayList<>();

    {
        products.add(new Product(++ID,"Pizza Margherita", "Tomato sauce, mozzarella, basil", 399));
        products.add(new Product(++ID,"Pizza Funghi", "Tomato sauce, mozzarella, mushrooms", 539));
        products.add(new Product(++ID, "Pizza Quattro Formaggi", "Tomato sauce, mozzarella, gorgonzola, parmesan", 489));
    }

    public List<Product> list() {return products;}

    public void saveProduct(Product product) {
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductbyId(Long id) {
        for (Product product : products) {
            if (product.getId().equals(id)) {return product;}
        }
        return null;
    }
}
