package org.example.be_hospital.repository;

import org.example.be_hospital.POJO.BenhNhan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BenhNhanRepository extends JpaRepository<BenhNhan, String> {
}
