package org.example.be_hospital.DAO;

import org.example.be_hospital.POJO.TaiKhoan;
import org.example.be_hospital.repository.TaiKhoanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TaiKhoanDAO {
    @Autowired
    private TaiKhoanRepository taiKhoanRepository;


}
