package org.example.be_hospital.DAO;

import org.example.be_hospital.POJO.BacSi;
import org.example.be_hospital.POJO.ChuyenKhoa;
import org.example.be_hospital.POJO.HocVi;
import org.example.be_hospital.repository.BacSiRepository;
import org.example.be_hospital.repository.ChuyenKhoaRepository;
import org.example.be_hospital.repository.HocViRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class BacSiDAO {

    @Autowired
    private BacSiRepository bacSiRepository;

    @Autowired
    private HocViRepository hocViRepository;

    @Autowired
    private ChuyenKhoaRepository chuyenKhoaRepository;

    // Lấy danh sách bác sĩ
    public List<BacSi> getAllBacSi() {
        return bacSiRepository.findAll();
    }

    // Lấy thông tin bác sĩ theo mã
    public BacSi getBacSiById(String maBacSi) {
        return bacSiRepository.findById(maBacSi).orElse(null);
    }

    // Lấy danh sách học vị
    public List<HocVi> getAllHocVi() {
        return hocViRepository.findAll();
    }

    // Lấy danh sách học hàm (Nếu học hàm là thuộc tính của BacSi)
    public List<String> getAllHocHam() {
        return bacSiRepository.findAll()
                .stream()
                .map(BacSi::getHocHam)
                .distinct()
                .toList();
    }

    // Lấy danh sách chuyên khoa
    public List<ChuyenKhoa> getAllChuyenKhoa() {
        return chuyenKhoaRepository.findAll();
    }


    // Hàm tính tổng số bác sĩ
    public long layTongSoBacSi() {
        return bacSiRepository.count();
    }

    // Hàm tính tổng số bác sĩ có học hàm cụ thể
    public long layTongSoBacSiCoHocHam() {
        return bacSiRepository.countByHocHamIn(Arrays.asList("Giáo sư", "Phó giáo sư"));
    }


    // Hàm tính tổng số bác sĩ có mã học vị là Tiến sĩ (TS)
    public long layTongSoBacSiCoHocViTS() {
        return bacSiRepository.countByHocViList_MaHocVi("TS");
    }

    // Hàm tính tổng số bác sĩ có mã học vị là Thạc sĩ (THS)
    public long layTongSoBacSiCoHocViTHS() {
        return bacSiRepository.countByHocViList_MaHocVi("THS");
    }

    public String layHocViSapXepTheoBac(String maBacSi) {
        // Lấy bác sĩ theo mã
        BacSi bacSi = bacSiRepository.findById(maBacSi).orElse(null);

        // Khởi tạo danh sách kết quả
        List<String> ketQua = new ArrayList<>();

        if (bacSi != null) {
            // Kiểm tra học hàm và thêm vào danh sách kết quả nếu có
            if (bacSi.getHocHam() != null && !bacSi.getHocHam().isEmpty()) {
                String hocHam = bacSi.getHocHam();
                // Chuyển đổi học hàm thành GS hoặc PGS nếu cần
                if (hocHam.equals("Giáo sư")) {
                    ketQua.add("GS");
                } else if (hocHam.equals("Phó giáo sư")) {
                    ketQua.add("PGS");
                } else {
                    ketQua.add(hocHam); // Nếu không phải GS hay PGS, thêm nguyên bản
                }
            }

            // Lấy danh sách học vị và sắp xếp theo bậc học vị
            List<String> hocViSapXep = bacSi.getHocViList().stream()
                    .sorted((hv1, hv2) -> hv1.getBacHocVi().compareTo(hv2.getBacHocVi())) // Sắp xếp theo bậc
                    .map(hv -> hv.getMaHocVi()) // Chuyển đổi thành mã học vị
                    .collect(Collectors.toList()); // Trả về danh sách đã sắp xếp

            // Thêm danh sách học vị vào danh sách kết quả
            ketQua.addAll(hocViSapXep);
        }

        // Kết hợp các danh hiệu với dấu "."
        String ketQuaChuoi = String.join(".", ketQua);

        return ketQuaChuoi;
    }

    public Integer kiemTraTonTaiHocViCuaBacSi(String maBacSi, String hocVi) {

        BacSi bacSi = bacSiRepository.findById(maBacSi).orElse(null);

        if (bacSi == null) {
            return 0;
        }

        return bacSi.getHocViList().stream()
                .anyMatch(hv -> hv.getMaHocVi().equals(hocVi)) ? 1 : 0;
    }
}
