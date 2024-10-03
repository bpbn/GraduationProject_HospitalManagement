package org.example.be_hospital.POJO;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "PHONG")
public class Phong {
    @Id
    private String maPhong;
    private String tenPhong;
    private String viTri;
}
