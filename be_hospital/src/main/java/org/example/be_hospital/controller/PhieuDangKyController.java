package org.example.be_hospital.controller;

import org.example.be_hospital.DAO.PhieuDangKyDAO;
import org.example.be_hospital.POJO.PhieuDangKy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/phieudangky")
public class PhieuDangKyController {

    @Autowired
    private PhieuDangKyDAO phieuDangKyDAO;

    @PostMapping("/them")
    public PhieuDangKy addPhieuDangKy(@RequestBody PhieuDangKy phieuDangKy) {
        return phieuDangKyDAO.addPhieuDangKy(phieuDangKy);
    }


}
