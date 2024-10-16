using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using winform_hospital.DAL;

namespace DAL
{
    public class PhieuDangKyDAL
    {
        private DBConnect db = new DBConnect();

        // Lấy danh sách phiếu đăng kí (Online)
        public DataTable LayDanhSachPhieuDangKy()
        {
            string query = "SELECT * FROM PHIEUDANGKY";
            return db.ExecuteQuery(query);
        }

        // Tìm kiếm bệnh nhân theo BHYT
        public DataTable TimKiemBHYTBenhNhan(string keyword)
        {
            string query = "SELECT * FROM PHIEUDANGKY WHERE LOWER(MABHYT) LIKE :keyword";
            OracleParameter[] parameters = new OracleParameter[]
            {
                new OracleParameter(":keyword", "%" + keyword.ToLower() + "%")
            };
            return db.ExecuteQuery(query, parameters);
        }

        public DataTable LayDanhSachPhieuDangKyTheoNgay(DateTime ngayHienTai)
        {
            string query = @"
                        SELECT pdk.*, llv.NGAYLAM
                        FROM PHIEUDANGKY pdk
                        JOIN LICHLAMVIEC llv ON pdk.LICHLAMVIEC = llv.MALICH
                        WHERE TRUNC(llv.NGAYLAM) = :ngayHienTai";

            OracleParameter[] parameters = new OracleParameter[]
            {
                new OracleParameter(":ngayHienTai", ngayHienTai.Date)
            };

            return db.ExecuteQuery(query, parameters);
        }

        // Lấy thông tin chi tiết phiếu đăng ký
        public DataTable LayThongTinChiTietPhieuDangKy(string maPhieu)
        {
            string query = @"
                SELECT pd.MAPHIEUDANGKY, 
                       bn.HOTEN, 
                       pd.STTTIEPNHAN, 
                       pd.STTKHAM, 
                       pd.MABHYT, 
                       llv.MAPHONG 
                FROM PHIEUDANGKY pd
                JOIN BENHNHAN bn ON pd.MABENHNHAN = bn.MABENHNHAN
                JOIN LICHLAMVIEC llv ON pd.LICHLAMVIEC = llv.MALICH
                WHERE pd.MAPHIEUDANGKY = :maPhieu";

            OracleParameter[] parameters = {
                new OracleParameter("maPhieu", maPhieu)
            };

            return db.ExecuteQuery(query, parameters);
        }

        public int DemSoPhieuDangKy()
        {
            int count = 0;
            string query = "SELECT COUNT(*) FROM PHIEUDANGKY"; // Câu lệnh SQL để đếm số phiếu

            DataTable dt = db.ExecuteQuery(query); // Giả sử ExecuteQuery là phương thức thực hiện truy vấn

            if (dt.Rows.Count > 0)
            {
                count = Convert.ToInt32(dt.Rows[0][0]); // Lấy số lượng phiếu đăng ký
            }

            return count;
        }

        public int DemSoPhieuDangKyTheoNgay(DateTime ngayHienTai)
        {
            string query = @"
                        SELECT COUNT(*) 
                        FROM PHIEUDANGKY pdk
                        JOIN LICHLAMVIEC llv ON pdk.LICHLAMVIEC = llv.MALICH
                        WHERE TRUNC(llv.NGAYLAM) = :ngayHienTai";

            OracleParameter[] parameters = new OracleParameter[]
            {
                new OracleParameter(":ngayHienTai", ngayHienTai.Date)
            };

            DataTable dt = db.ExecuteQuery(query, parameters);
            if (dt.Rows.Count > 0)
            {
                return Convert.ToInt32(dt.Rows[0][0]);
            }
            return 0;
        }


    }
}
