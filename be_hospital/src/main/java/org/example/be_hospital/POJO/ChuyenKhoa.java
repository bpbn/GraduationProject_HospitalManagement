package org.example.be_hospital.POJO;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Data
@Entity
@Table(name="CHUYENKHOA")
public class ChuyenKhoa{

    @Id
    private String maChuyenKhoa;
    private String tenChuyenKhoa;
    private String hinhAnh;
}
