package org.example.be_hospital.controller;

import org.example.be_hospital.DAO.LichLamViecDAO;
import org.example.be_hospital.POJO.BacSi;
import org.example.be_hospital.POJO.LichLamViec;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/lichlamviec")
public class LichLamViecController {

    @Autowired
    private LichLamViecDAO lichLamViecDAO;

    @GetMapping("/all")
    public List<LichLamViec> getAllLichLamViec(){
        return lichLamViecDAO.getAllLichLamViec();
    }

    // API tìm ngày làm theo mã bác sĩ
    @GetMapping("/ngaylamtheobacsi/{maBacSi}")
    public List<LichLamViec> layLichLamTheoMaBacSi(@PathVariable String maBacSi) {
        return lichLamViecDAO.layLichLamTheoMaBacSi(maBacSi);
    }

    // API tìm bác sĩ theo ngày làm
    @GetMapping("/bacsitheongaylam")
    public List<BacSi> layBacSiTheoNgayLam(@RequestParam @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate ngayLam) {
        List<BacSi> bacSiList = lichLamViecDAO.layBacSiTheoNgayLam(ngayLam);
        System.out.println("Ngày làm: " + ngayLam);
        System.out.println("Danh sách bác sĩ: " + bacSiList);
        return bacSiList;
    }


    @GetMapping("/tachNgayTheoTuan/{i}")
    public ResponseEntity tachNgayTheoTuan(@PathVariable int i) {
        List<Integer> dates = lichLamViecDAO.tachNgayTheoTuan(i);
        return new ResponseEntity<>(dates, HttpStatus.OK);
    }

}