package org.example.be_hospital.POJO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BenhNhanPOJO {
    private String MaBenhNhan;
    private String HoTen;
    private String GioiTinh;
    private String DiaChi;
    private Integer NamSinh;
    private TaiKhoanPOJO TaiKhoan;
    private String DienThoai;
}
