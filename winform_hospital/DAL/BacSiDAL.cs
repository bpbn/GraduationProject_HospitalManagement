using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using winform_hospital.DAL;

namespace DAL
{
    public class BacSiDAL
    {

        private DBConnect db = new DBConnect();

        //Read
        public DataTable LayBacSi()
        {
            string query = "SELECT * FROM BACSI";
            return db.ExecuteQuery(query);
        }


        // Insert
        public void ThemBacSi(string maBacSi, string hoTen, string gioiTinh, string hocHam, string anhDaiDien, string gioiThieu, string maChuyenKhoa, string trangThai, DateTime ngayCapNhat, string taiKhoan)
        {
            string query = "INSERT INTO BACSI VALUES (:maBacSi, :hoTen, :gioiTinh, :hocHam, :anhDaiDien, :gioiThieu, :maChuyenKhoa, :trangThai, :ngayCapNhat, :taiKhoan)";
            using (OracleConnection con = db.GetConnection())
            {
                con.Open();
                OracleCommand cmd = new OracleCommand(query, con);
                cmd.Parameters.Add(new OracleParameter("maBacSi", maBacSi));
                cmd.Parameters.Add(new OracleParameter("hoTen", hoTen));
                cmd.Parameters.Add(new OracleParameter("gioiTinh", gioiTinh));
                cmd.Parameters.Add(new OracleParameter("hocHam", hocHam));
                cmd.Parameters.Add(new OracleParameter("anhDaiDien", anhDaiDien));
                cmd.Parameters.Add(new OracleParameter("gioiThieu", gioiThieu));
                cmd.Parameters.Add(new OracleParameter("maChuyenKhoa", maChuyenKhoa));
                cmd.Parameters.Add(new OracleParameter("trangThai", trangThai));
                cmd.Parameters.Add(new OracleParameter("ngayCapNhat", ngayCapNhat));
                cmd.Parameters.Add(new OracleParameter("taiKhoan", taiKhoan));
                cmd.ExecuteNonQuery();
            }
        }


        //Update
        public void CapNhatBacSi(string maBacSi, string hoTenMoi, string gioiTinhMoi, string hocHamMoi, string anhDaiDienMoi, string gioiThieuMoi, string maChuyenKhoaMoi, string trangThaiMoi, DateTime ngayCapNhat, string taiKhoanMoi)
        {
            string query = "UPDATE BACSI SET HOTEN = :hoTenMoi, GIOITINH = :gioiTinhMoi, HOCHAM = :hocHamMoi, ANHDAIDIEN = :anhDaiDienMoi, " +
                        "GIOITHIEU = :gioiThieuMoi, MACHUYENKHOA = :maChuyenKhoaMoi, TRANGTHAI = :trangThaiMoi, NGAYCAPNHAT = :ngayCapNhat, " +
                        "TAIKHOAN = :taiKhoanMoi WHERE MABACSI = :maBacSi";
            using (OracleConnection con = db.GetConnection())
            {
                con.Open();
                OracleCommand cmd = new OracleCommand(query, con);
                cmd.Parameters.Add(new OracleParameter("maBacSi", maBacSi));
                cmd.Parameters.Add(new OracleParameter("hoTenMoi", hoTenMoi));
                cmd.Parameters.Add(new OracleParameter("gioiTinhMoi", gioiTinhMoi));
                cmd.Parameters.Add(new OracleParameter("hocHamMoi", hocHamMoi));
                cmd.Parameters.Add(new OracleParameter("anhDaiDienMoi", anhDaiDienMoi));
                cmd.Parameters.Add(new OracleParameter("gioiThieuMoi", gioiThieuMoi));
                cmd.Parameters.Add(new OracleParameter("maChuyenKhoaMoi", maChuyenKhoaMoi));
                cmd.Parameters.Add(new OracleParameter("trangThaiMoi", trangThaiMoi));
                cmd.Parameters.Add(new OracleParameter("ngayCapNhat", ngayCapNhat));
                cmd.Parameters.Add(new OracleParameter("taiKhoanMoi", taiKhoanMoi));
                cmd.ExecuteNonQuery();
            }
        }


        //Delete
        public void XoaBacSi(string maBacSi)
        {
            string query = "DELETE FROM BACSI WHERE MABACSI = :maBacSi";
            using (OracleConnection con = db.GetConnection())
            {
                con.Open();
                OracleCommand cmd = new OracleCommand(query, con);
                cmd.Parameters.Add(new OracleParameter("maBacSi", maBacSi));
                cmd.ExecuteNonQuery();
            }
        }



        //public DataTable LayBacSi()
        //{
        //    DataTable dataTable = new DataTable();
        //    try
        //    {
        //        using (OracleConnection con = db.GetConnection())
        //        {
        //            con.Open();
        //            string query = "SELECT * FROM BacSi";
        //            using (OracleCommand cmd = new OracleCommand(query, con))
        //            {
        //                OracleDataAdapter adapter = new OracleDataAdapter(cmd);
        //                adapter.Fill(dataTable); // Đổ dữ liệu vào DataTable
        //            }
        //        }
        //    }
        //    catch (OracleException ex)
        //    {
        //        MessageBox.Show($"Lỗi khi truy vấn dữ liệu: {ex.Message}");
        //    }
        //    return dataTable;
        //}
    }
}
