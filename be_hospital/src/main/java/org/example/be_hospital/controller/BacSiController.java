package org.example.be_hospital.controller;

import org.example.be_hospital.DAO.BacSiDAO;
import org.example.be_hospital.POJO.BacSi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/bacsi")
public class BacSiController {

    @Autowired
    private BacSiDAO bacSiDAO;

    @GetMapping("/all")
    public List<BacSi> getALLBacSi(){
        System.out.println("Fetching all BacSi");
        return bacSiDAO.getAllBacSi();
    }
}
