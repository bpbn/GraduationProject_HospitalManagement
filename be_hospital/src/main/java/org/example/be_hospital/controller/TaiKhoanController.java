package org.example.be_hospital.controller;

import org.example.be_hospital.DAO.TaiKhoanDAO;
import org.example.be_hospital.POJO.PhieuDangKy;
import org.example.be_hospital.POJO.TaiKhoan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/taikhoan")
public class TaiKhoanController {

    @Autowired
    private TaiKhoanDAO taiKhoanDAO;


}
