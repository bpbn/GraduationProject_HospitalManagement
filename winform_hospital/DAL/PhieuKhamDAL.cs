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
    public class PhieuKhamDAL
    {
        private DBConnect db = new DBConnect();

        // Đếm số phiếu khám theo ngày hiện tại
        public int DemSoPhieuKhamTheoNgay(DateTime ngayHienTai)
        {
            string query = @"
            SELECT COUNT(*) 
            FROM PHIEUKHAM pk
            WHERE TRUNC(pk.NGAYLAP) = :ngayHienTai";

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
