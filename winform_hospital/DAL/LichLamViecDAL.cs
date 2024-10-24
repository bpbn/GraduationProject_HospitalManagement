﻿using System;
using System.Collections.Generic;
using System.Data;
using Oracle.DataAccess.Client;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using winform_hospital.DAL;
using System.Data.Linq;

namespace DAL
{
    public class LichLamViecDAL
    {
        private DBConnect db = new DBConnect();

        //Read
        public DataTable LayLichLamViec()
        {
            string query = "SELECT * FROM LICHLAMVIEC"; 
            return db.ExecuteQuery(query);
        }

        //Insert
        public void ThemLichLamViec(string maLich, string maBacSi, string maPhong, DateTime ngayLam)
        {
            DateTime dateOnly = ngayLam.Date; // Lấy phần ngày
            string query = "INSERT INTO LICHLAMVIEC VALUES (:maLich, :maBacSi, :maPhong, :ngayLam)";
            using (OracleConnection con = db.GetConnection())
            {
                con.Open();
                OracleCommand cmd = new OracleCommand(query, con);
                cmd.Parameters.Add(new OracleParameter("maLich", maLich));
                cmd.Parameters.Add(new OracleParameter("maBacSi", maBacSi));
                cmd.Parameters.Add(new OracleParameter("maPhong", maPhong));
                cmd.Parameters.Add(new OracleParameter("ngayLam", dateOnly));
                cmd.ExecuteNonQuery();
            }
        }


        public string LayMaLichLamViecTheoPhongVaNgay(string maPhong, DateTime ngayLam)
        {
            string query = @"
            SELECT MALICH 
            FROM LICHLAMVIEC 
            WHERE MAPHONG = :maPhong AND TRUNC(NGAYLAM) = :ngayLam";

            OracleParameter[] parameters = new OracleParameter[]
            {
            new OracleParameter(":maPhong", maPhong),
            new OracleParameter(":ngayLam", ngayLam.Date)
            };

            DataTable dt = db.ExecuteQuery(query, parameters);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0]["MALICH"].ToString();
            }

            return null; // Nếu không tìm thấy lịch làm việc
        }


    }
}
