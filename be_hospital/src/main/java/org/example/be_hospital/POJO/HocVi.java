package org.example.be_hospital.POJO;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Data
@Table(name = "HOCVI")
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class HocVi {
    @Id
    private String maHocVi;
    private String tenHocVi;
    private Integer bacHocVi;
}
