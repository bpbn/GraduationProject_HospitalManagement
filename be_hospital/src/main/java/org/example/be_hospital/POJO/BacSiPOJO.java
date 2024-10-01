package org.example.be_hospital.POJO;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class BacSiPOJO {
    private String MaBacSi;
    private String HoTen;
    private String GioiTinh;
    private String HocHam;
    private String AnhDaiDien;
    private String GioiThieu;
    private ChuyenKhoa ChuyenKhoa;
    private String TrangThai;
    private Date NgayCapNhat;
    private TaiKhoanPOJO TaiKhoan;
    
    @Getter
    @Setter
    private class ChuyenKhoa{
        private String MaChuyenKhoa;
        private String TenChuyenKhoa;

    }

}
