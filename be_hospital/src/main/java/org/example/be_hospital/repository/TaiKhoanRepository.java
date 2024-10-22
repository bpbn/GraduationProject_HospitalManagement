package org.example.be_hospital.repository;

import org.example.be_hospital.POJO.LichLamViec;
import org.example.be_hospital.POJO.TaiKhoan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TaiKhoanRepository extends JpaRepository<TaiKhoan, String> {

}
