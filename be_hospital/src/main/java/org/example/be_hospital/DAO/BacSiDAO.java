package org.example.be_hospital.DAO;

import org.example.be_hospital.POJO.BacSi;
import org.example.be_hospital.repository.BacSiRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BacSiDAO {

    @Autowired
    private BacSiRepository bacSiRepository;


    public List<BacSi> getAllBacSi() {
        return bacSiRepository.findAll();
    }

}
