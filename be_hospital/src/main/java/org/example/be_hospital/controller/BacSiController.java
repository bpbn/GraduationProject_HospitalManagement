package org.example.be_hospital.controller;

import org.example.be_hospital.DAO.BacSiDAO;
import org.example.be_hospital.POJO.BacSi;
import org.example.be_hospital.POJO.ChuyenKhoa;
import org.example.be_hospital.POJO.HocVi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/bacsi")
public class BacSiController {

    @Autowired
    private BacSiDAO bacSiDAO;

    @GetMapping("/all")
    public List<BacSi> getALLBacSi(){
        return bacSiDAO.getAllBacSi();
    }

    // Lấy thông tin bác sĩ theo mã
    @GetMapping("/timbstheoma/{maBacSi}")
    public BacSi getBacSiById(@PathVariable String maBacSi) {
        return bacSiDAO.getBacSiById(maBacSi);
    }

    // Lấy danh sách học vị
    @GetMapping("/dshocvi")
    public List<HocVi> getAllHocVi() {
        return bacSiDAO.getAllHocVi();
    }

    // Lấy danh sách học hàm
    @GetMapping("/dshocham")
    public List<String> getAllHocHam() {
        return bacSiDAO.getAllHocHam();
    }

    // Lấy danh sách chuyên khoa
    @GetMapping("/dschuyenkhoa")
    public List<ChuyenKhoa> getAllChuyenKhoa() {
        return bacSiDAO.getAllChuyenKhoa();
    }

    // Lấy tổng số bác sĩ
    @GetMapping("/tong-bs")
    public long layTongSoBacSi() {
        return bacSiDAO.layTongSoBacSi();
    }

    // Lấy tổng số bác sĩ có học hàm
    @GetMapping("/tong-gs-pgs")
    public long layTongSoBacSiCoHocHam() {
        return bacSiDAO.layTongSoBacSiCoHocHam();
    }

    // Lấy tổng số bác sĩ có học vị Tiến sĩ
    @GetMapping("/tong-ts")
    public long layTongSoBacSiCoHocViTS() {
        return bacSiDAO.layTongSoBacSiCoHocViTS();
    }

    // Lấy tổng số bác sĩ có học vị Thạc sĩ
    @GetMapping("/tong-ths")
    public long layTongSoBacSiCoHocViTHS() {
        return bacSiDAO.layTongSoBacSiCoHocViTHS();
    }

    // Lấy danh sách học vị đã sắp xếp theo bậc của bác sĩ
    @GetMapping("/hocvi/{maBacSi}")
    public String layHocViSapXep(@PathVariable String maBacSi) {
        return bacSiDAO.layHocViSapXepTheoBac(maBacSi);
    }

    @GetMapping("/kiemTraHVCuaBS/{id}/{hocvi}")
    public long kiemTraHVCuaBS(@PathVariable String id, @PathVariable String hocvi) {
        return bacSiDAO.kiemTraTonTaiHocViCuaBacSi(id, hocvi);
    }
}
