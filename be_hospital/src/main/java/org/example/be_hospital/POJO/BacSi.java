package org.example.be_hospital.POJO;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "BACSI")
public class BacSi {
    @Id
    @Column(name = "MABACSI")
    private String maBacSi;
    @Column(name = "HOTEN")
    private String hoTen;
    @Column(name = "GIOITINH")
    private String gioiTinh;
    @Column(name = "HOCHAM")
    private String hocHam;
    @Column(name = "ANHDAIDIEN")
    private String anhDaiDien;
    @Column(name = "GIOITHIEU")
    private String gioiThieu;
    @Column(name = "TRANGTHAI")
    private String trangThai;
    @Column(name = "NGAYCAPNHAT")
    private Date ngayCapNhat;

    @ManyToOne()
    @JoinColumn(name = "MACHUYENKHOA")
    private ChuyenKhoa chuyenKhoa;

    @ManyToMany()
    @JoinTable(
            name = "HOCVIBACSI",
            joinColumns = @JoinColumn(name = "MABACSI"),
            inverseJoinColumns = @JoinColumn(name = "MAHOCVI")
    )
    private List<HocVi> hocViList;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "TAIKHOAN", referencedColumnName = "TENTAIKHOAN")
    private TaiKhoan taiKhoan;
}
