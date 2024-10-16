using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class PhieuDangKyBLL
    {
        private PhieuDangKyDAL pdkDAL = new PhieuDangKyDAL();

        // Lấy danh sách phiếu đăng ký (Online)
        public DataTable LayDanhSachPhieuDangKy()
        {
            return pdkDAL.LayDanhSachPhieuDangKy();
        }

        public DataTable LayDanhSachPhieuDangKyTheoNgay(DateTime ngayHienTai)
        {
            return pdkDAL.LayDanhSachPhieuDangKyTheoNgay(ngayHienTai);
        }


        public DataTable TimKiemBHYTBenhNhan(string keyword)
        {
            return pdkDAL.TimKiemBHYTBenhNhan(keyword);
        }

        // Lấy thông tin chi tiết phiếu đăng ký
        public DataTable LayThongTinChiTietPhieuDangKy(string maPhieu)
        {
            return pdkDAL.LayThongTinChiTietPhieuDangKy(maPhieu);
        }

        public int DemSoPhieuDangKy()
        {
            return pdkDAL.DemSoPhieuDangKy(); // Gọi phương thức từ DAL
        }

        public int LaySTTTiepNhanTheoNgay(DateTime ngayHienTai)
        {
            int soPhieu = pdkDAL.DemSoPhieuDangKyTheoNgay(ngayHienTai);
            return soPhieu + 1; // Tăng 1 để lấy số thứ tự tiếp nhận kế tiếp
        }

        public bool LuuPhieuDangKy(string maPhieu, DateTime ngayLap, string maBHYT,
                           string trangThaiThanhToan, string maBenhNhan, string nvLap,
                           string nvThanhToan, string maLichLamViec, string tinhTrangSucKhoe,
                           int sttTiepNhan, int sttKham, string hinhThucDangKy)
        {
            return pdkDAL.LuuPhieuDangKy(maPhieu, ngayLap, maBHYT, trangThaiThanhToan,
                                        maBenhNhan, nvLap, nvThanhToan, maLichLamViec,
                                        tinhTrangSucKhoe, sttTiepNhan, sttKham, hinhThucDangKy);
        }

        public int LaySTTKhamTheoLichLamViec(string maLichLamViec)
        {
            int soPhieuKham = pdkDAL.DemSoPhieuKhamTheoLichLamViec(maLichLamViec);
            return soPhieuKham + 1; // Tăng 1 để lấy số thứ tự khám tiếp theo
        }

    }
}
