package org.example.be_hospital.POJO;


import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Data
@Entity
@Table(name="PHIEUDANGKY")
@AllArgsConstructor
@NoArgsConstructor
public class PhieuDangKy {
    @Id
    private String maPhieuDangKy;
    private Date ngayLap;
    private String maBHYT;
    private String trangThaiThanhToan;
    private String maBenhNhan;
    private String NVLap;

    private String lichLamViec;

    private String NVThanhToan;
    private String tinhTrangSucKhoe;
    private Integer STTTiepNhan;
    private Integer STTKham;
    private String hinhThucDangKy;



}
