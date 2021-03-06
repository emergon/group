package com.firstdeskleft.controllers;

import com.firstdeskleft.entities.Tour;
import com.firstdeskleft.service.TourService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author User
 */
@Controller
@RequestMapping("/tour")
public class TourController {
    
    @Autowired
    TourService service;

    @GetMapping("/list")
    public String showTours(Model m) {
        List<Tour> list = service.getAllTours();
        m.addAttribute("listOfTours",list);
        
        return "listTour";
    }

}
