using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using winform_hospital.DAL;

namespace DAL
{
    public class BenhNhanDAL
    {
        private DBConnect db = new DBConnect();

        // Lấy danh sách bệnh nhân tại bệnh viện (Offline)
        public DataTable LayDanhSachBenhNhan()
        {
            string query = "SELECT * FROM BENHNHAN";
            return db.ExecuteQuery(query);
        }

        // Tìm kiếm bệnh nhân theo tên hoặc số điện thoại
        public DataTable TimKiemTenBenhNhan(string keyword)
        {
            string query = "SELECT * FROM BENHNHAN WHERE LOWER(HOTEN) LIKE :keyword OR LOWER(DIENTHOAI) LIKE :keyword";
            OracleParameter[] parameters = new OracleParameter[]
            {
                new OracleParameter(":keyword", "%" + keyword.ToLower() + "%")
            };
            return db.ExecuteQuery(query, parameters);
        }
    }
}
