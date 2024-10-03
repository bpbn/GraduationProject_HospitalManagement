package org.example.be_hospital.DTO;

import jakarta.persistence.ManyToOne;
import lombok.Getter;
import lombok.Setter;
import org.example.be_hospital.POJO.BacSi;
import org.example.be_hospital.POJO.Phong;

import java.util.Date;

@Getter
@Setter
public class LichLamViecDTO {
    private String maLich;
    private BacSi bacSi;
    private Date ngayLam;
    private Phong phongLamViec;
}
