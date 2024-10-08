package org.example.be_hospital.DAO;

import org.example.be_hospital.DTO.PhieuDangKyDTO;
import org.example.be_hospital.POJO.PhieuDangKy;
import org.example.be_hospital.repository.PhieuDangKyReponsitory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PhieuDangKyDAO {
    @Autowired
    private PhieuDangKyReponsitory phieuDangKyRepository;

    public List<PhieuDangKy> getAllBenhNhan() {
        return phieuDangKyRepository.findAll();
    }

    public String generateMaPDK() {
        String prefix = "PDK";
        String lastMaPDK = phieuDangKyRepository.findTopByOrderByMaPhieuDangKyDesc();

        if (lastMaPDK == null) {
            return prefix + "0000"; // Nếu chưa có mã nào, trả về PDK0000
        }

        // Lấy phần số từ mã PDK hiện tại
        int currentNumber = Integer.parseInt(lastMaPDK.substring(3));
        // Tăng số lên 1
        int newNumber = currentNumber + 1;
        // Định dạng thành chuỗi với 4 chữ số
        return prefix + String.format("%04d", newNumber);
    }

    public PhieuDangKy addPhieuDangKy(PhieuDangKy phieuDangKy) {
        // Sinh mã PDK mới
        String maPDK = generateMaPDK();
        phieuDangKy.setMaPhieuDangKy(maPDK);
        // Lưu vào cơ sở dữ liệu
        return phieuDangKyRepository.save(phieuDangKy);
    }
}
