package org.example.be_hospital.repository;

import org.example.be_hospital.POJO.BacSi;
import org.example.be_hospital.POJO.LichLamViec;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Date;
import java.util.List;

public interface LichLamViecRepository extends JpaRepository<LichLamViec, String> {

    // Tìm ngày làm việc theo mã bác sĩ
    List<LichLamViec> findByBacSi_MaBacSi(String maBacSi);

    // Tìm bác sĩ theo ngày làm việc
    @Query("SELECT l.bacSi FROM LichLamViec l WHERE l.ngayLam = :ngayLam")
    List<BacSi> findBacSiByNgayLam(Date ngayLam);

    LichLamViec findByBacSi_MaBacSiAndNgayLam(String maBacSi, Date ngayLam);
}
