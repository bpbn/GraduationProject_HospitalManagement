package org.example.be_hospital.repository;

import org.example.be_hospital.POJO.PhieuDangKy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PhieuDangKyReponsitory extends JpaRepository<PhieuDangKy,String> {
}
