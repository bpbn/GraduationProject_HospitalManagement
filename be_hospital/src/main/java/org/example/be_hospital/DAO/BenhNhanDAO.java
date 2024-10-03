package org.example.be_hospital.DAO;

import org.example.be_hospital.POJO.BenhNhan;
import org.example.be_hospital.repository.BenhNhanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BenhNhanDAO {
    @Autowired
    private BenhNhanRepository benhNhanRepository;

    public List<BenhNhan> getAllBenhNhan() {
        return benhNhanRepository.findAll();
    }
}
