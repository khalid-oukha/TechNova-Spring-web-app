package org.example.controllers;

import org.example.entities.User;
import org.example.services.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/users")
public class UserController {
    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String index(Model model) {
        List<User> users = userService.findAll();
        model.addAttribute("users", users);
        return "users";
    }

    @GetMapping("/delete/{id}")
    public String delete(Model model, @PathVariable Long id) {
        userService.deleteById(id);
        return "redirect:/users";
    }

    @GetMapping("/edit/{id}")
    public String edit(Model model, @PathVariable Long id) {
        User user = userService.findById(id).get();
        model.addAttribute("user", user);
        return "edit-user";
    }

    @GetMapping("/new")
    public String create(Model model) {
        return "create-user";
    }

    @PostMapping("/create")
    public String create(User user) {
        userService.save(user);
        return "redirect:/users";
    }

    @PostMapping("/update")
    public String update(User user) {
        userService.save(user);
        return "redirect:/users";
    }

}
