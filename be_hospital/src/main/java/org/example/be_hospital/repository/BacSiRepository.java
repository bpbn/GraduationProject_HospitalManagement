package org.example.be_hospital.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.example.be_hospital.POJO.BacSi;

import java.util.List;

@Repository
public interface BacSiRepository extends JpaRepository<BacSi, String> {

    // Đếm số bác sĩ có học hàm
    @Query("SELECT COUNT(b) FROM BacSi b WHERE b.hocHam IN :hocHams")
    long countByHocHamIn(@Param("hocHams") List<String> hocHams);

    // Đếm số bác sĩ có mã học vị là Thạc sĩ / TS
    long countByHocViList_MaHocVi(String maHocVi);

    // Đếm tổng số bác sĩ
    long count();
}
