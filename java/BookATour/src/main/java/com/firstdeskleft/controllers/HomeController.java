package com.firstdeskleft.controllers;

import com.firstdeskleft.entities.User;
import javax.servlet.http.HttpServletRequest;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping
    public String home() {
        System.out.println("---------------------------------------------------Homehome");
        return "Home";
    }

    @GetMapping("/HomeAdmin")
    public String adminHome() {
        getPrincipal();
        return "HomeAdmin";
    }

    @GetMapping("/HomeGuide")
    public String guideHome() {

        return "HomeGuide";
    }

    @GetMapping("/HomeCustomer")
    public String customerHome() {

        return "HomeCustomer";
    }

    private UserDetails getPrincipal(){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Object o = auth.getPrincipal();
        UserDetails userDetails = (UserDetails) auth.getPrincipal();
        if(o instanceof User){
            System.out.println("o=user");
        }else{
            System.out.println("o!=user");
        }
        System.out.println("User has username: " + userDetails.getUsername());
        System.out.println("User has authorities: " + userDetails.getAuthorities());
        return userDetails;
    }
    
}
