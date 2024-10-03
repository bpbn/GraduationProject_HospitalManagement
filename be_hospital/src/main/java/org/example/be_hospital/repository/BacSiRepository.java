package org.example.be_hospital.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.example.be_hospital.POJO.BacSi;

@Repository
public interface BacSiRepository extends JpaRepository<BacSi, String> {

}
