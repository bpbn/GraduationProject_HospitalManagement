package org.example.be_hospital.DAO;

import org.example.be_hospital.POJO.BacSi;
import org.example.be_hospital.POJO.LichLamViec;
import org.example.be_hospital.repository.LichLamViecRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class LichLamViecDAO {
    @Autowired
    private LichLamViecRepository lichLamViecRepository;

    // Tìm ngày làm theo mã bác sĩ
    public List<LichLamViec> layLichLamTheoMaBacSi(String maBacSi) {
        return lichLamViecRepository.findByBacSi_MaBacSi(maBacSi);
    }

    // Tìm bác sĩ theo ngày làm
    public List<BacSi> layBacSiTheoNgayLam(Date ngayLam) {
        return lichLamViecRepository.findBacSiByNgayLam(ngayLam);
    }

    public static List<Integer> tachNgayTheoTuan(int weekIndex) {
        if (weekIndex <= 0) {
            throw new IllegalArgumentException("Week index must be 1 or greater");
        }

        LocalDate today = LocalDate.now();
        LocalDate firstDayOfMonth = today.withDayOfMonth(1);
        LocalDate firstDayOfWeek = firstDayOfMonth.with(DayOfWeek.MONDAY);

        int daysToAdd = (weekIndex - 1) * 7;
        firstDayOfWeek = firstDayOfWeek.plusDays(daysToAdd);

        List<Integer> weekDays = new ArrayList<>();
        LocalDate currentDay = firstDayOfWeek;

        for (int j = 0; j < 7; j++) {
            if (currentDay.isAfter(today.withDayOfMonth(today.lengthOfMonth()))) {
                // Handle end of month and fill remaining days with next month
                int daysInCurrentMonth = currentDay.lengthOfMonth();
                for (int k = weekDays.size(); k < 7; k++) {
                    weekDays.add(currentDay.getDayOfMonth());
                    if (currentDay.getDayOfMonth() == daysInCurrentMonth) {
                        currentDay = currentDay.plusMonths(1).withDayOfMonth(1);
                    } else {
                        currentDay = currentDay.plusDays(1);
                    }
                }
                break;
            }
            weekDays.add(currentDay.getDayOfMonth());
            currentDay = currentDay.plusDays(1);
        }

        return weekDays;
    }

    public String timLichLamViec(String maBacSi, Date ngayLam) {
        LichLamViec lichLamViec = lichLamViecRepository.findByBacSi_MaBacSiAndNgayLam(maBacSi, ngayLam);
        if (lichLamViec != null) {
            return lichLamViec.getMaLich();
        } else {
            return "Lich lam viec khong tim thay";
        }
    }

}
