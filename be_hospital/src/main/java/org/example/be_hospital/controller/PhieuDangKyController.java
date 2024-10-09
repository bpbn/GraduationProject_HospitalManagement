package org.example.be_hospital.controller;

import org.example.be_hospital.DAO.PhieuDangKyDAO;
import org.example.be_hospital.DTO.PhieuDangKyDTO;
import org.example.be_hospital.POJO.BacSi;
import org.example.be_hospital.POJO.PhieuDangKy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/phieudangky")
public class PhieuDangKyController {

    @Autowired
    private PhieuDangKyDAO phieuDangKyDAO;

    @GetMapping("/all")
    public List<PhieuDangKy> getALLBacSi(){
        return phieuDangKyDAO.getAllBenhNhan();
    }
    @PostMapping("/them")
    public PhieuDangKy addPhieuDangKy(@RequestBody PhieuDangKy phieuDangKy) {
        return phieuDangKyDAO.addPhieuDangKy(phieuDangKy);
    }


}
