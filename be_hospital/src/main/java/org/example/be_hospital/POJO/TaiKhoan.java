package org.example.be_hospital.POJO;

import jakarta.persistence.*;
import lombok.*;

@Data
@Entity
@Table(name="TAIKHOAN")
@AllArgsConstructor
@NoArgsConstructor
public class TaiKhoan {
    @Id

    private String tenTaiKhoan;
    private String matKhau;

}
