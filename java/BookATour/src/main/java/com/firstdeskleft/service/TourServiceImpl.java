/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.firstdeskleft.service;

import com.firstdeskleft.dao.TourDao;
import com.firstdeskleft.entities.Tour;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author User
 */
@Service
@Transactional
public class TourServiceImpl implements TourService{
    
    @Autowired
    TourDao tdao;
    

    @Override
    public List<Tour> getAllTours() {
        return tdao.findAll();        
    }
    
}
