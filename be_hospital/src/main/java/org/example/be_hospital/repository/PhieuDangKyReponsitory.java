package org.example.be_hospital.repository;

import org.example.be_hospital.DTO.PhieuDangKyDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface PhieuDangKyReponsitory extends JpaRepository<PhieuDangKyDTO,String> {

    @Query("SELECT pdk.maPhieuDangKy FROM PhieuDangKy pdk ORDER BY pdk.maPhieuDangKy DESC")
    String findTopByOrderByMaPhieuDangKyDesc();
}
