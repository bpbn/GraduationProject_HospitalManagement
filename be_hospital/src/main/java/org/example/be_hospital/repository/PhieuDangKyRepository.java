package org.example.be_hospital.repository;

import org.example.be_hospital.POJO.PhieuDangKy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PhieuDangKyRepository extends JpaRepository<PhieuDangKy,String> {

    @Query("SELECT MAX(maPhieuDangKy) FROM PhieuDangKy")
    String findMaxMaPhieuDangKy();

    @Query("SELECT MAX(pd.STTKham) FROM PhieuDangKy pd WHERE pd.lichLamViec = :malich")
    long findMaxSTTByLich(@Param("malich") String malich);

}
