package org.example.be_hospital.POJO;

import jakarta.persistence.*;
import lombok.*;

import java.util.Date;

@Data
@Entity
@Table(name ="LICHLAMVIEC")
@AllArgsConstructor
@NoArgsConstructor
public class LichLamViec {
    @Id
    private String maLich;

    @ManyToOne
    @JoinColumn(name = "MABACSI")
    private BacSi bacSi;
    private Date ngayLam;

    @ManyToOne
    @JoinColumn(name = "MAPHONG")
    private Phong phongLamViec;

}
