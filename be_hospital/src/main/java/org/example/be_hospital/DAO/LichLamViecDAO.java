package org.example.be_hospital.DAO;

import org.example.be_hospital.POJO.BacSi;
import org.example.be_hospital.POJO.LichLamViec;
import org.example.be_hospital.repository.LichLamViecRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class LichLamViecDAO {
    @Autowired
    private LichLamViecRepository lichLamViecRepository;

    // Tìm ngày làm theo mã bác sĩ
    public List<LichLamViec> layLichLamTheoMaBacSi(String maBacSi) {
        return lichLamViecRepository.findByBacSi_MaBacSi(maBacSi);
    }

    // Tìm bác sĩ theo ngày làm
    public List<BacSi> layBacSiTheoNgayLam(Date ngayLam) {
        return lichLamViecRepository.findBacSiByNgayLam(ngayLam);
    }
}
