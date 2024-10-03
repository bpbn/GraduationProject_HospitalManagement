package org.example.be_hospital.DTO;

import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;
import org.example.be_hospital.POJO.LichLamViec;

import java.util.Date;

@Getter
@Setter
public class PhieuDangKyDTO {
    private String maPhieuDangKy;
    private Date ngayLap;
    private String maBHYT;
    private String trangThaiThanhToan;
    private String maBenhNhan;
    private LichLamViec lichLamViec;
    private String tinhTrangSucKhoe;
    private String STTTiepNhan;
    private String hinhThucDangKy;
}
