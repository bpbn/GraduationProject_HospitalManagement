package org.example.be_hospital.POJO;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
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
    private LocalDate ngayLam;

    @ManyToOne
    @JoinColumn(name = "MAPHONG")
    private Phong phongLamViec;

}
