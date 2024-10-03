package org.example.be_hospital.DAO;

import org.example.be_hospital.POJO.BenhNhan;
import org.example.be_hospital.POJO.PhieuDangKy;
import org.example.be_hospital.repository.BenhNhanRepository;
import org.example.be_hospital.repository.PhieuDangKyReponsitory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhieuDangKyDAO {
    @Autowired
    private PhieuDangKyReponsitory phieuDangKyRepository;

    public List<PhieuDangKy> getAllBenhNhan() {
        return phieuDangKyRepository.findAll();
    }
}
