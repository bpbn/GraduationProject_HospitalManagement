package org.example.be_hospital.DTO;

import lombok.Getter;
import lombok.Setter;
import org.example.be_hospital.POJO.ChuyenKhoa;
import org.example.be_hospital.POJO.HocVi;

import java.util.Date;
import java.util.List;

@Getter
@Setter
public class BacSiDTO {
    private String maBacSi;
    private String hoTen;
    private String gioiTinh;
    private String hocHam;
    private String anhDaiDien;
    private String gioiThieu;
    private String trangThai;
    private Date ngayCapNhat;
    private List<HocVi> hocViList;
    private ChuyenKhoa chuyenKhoa;

}
