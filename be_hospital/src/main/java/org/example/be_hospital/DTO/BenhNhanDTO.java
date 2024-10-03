package org.example.be_hospital.DTO;

import jakarta.persistence.CascadeType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;
import org.example.be_hospital.POJO.TaiKhoan;

@Getter
@Setter
public class BenhNhanDTO {
    private String maBenhNhan;
    private String hoTen;
    private String gioiTinh;
    private String diaChi;
    private Integer namSinh;
    private String dienThoai;
    private TaiKhoan taiKhoan;
}
