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
    public class PhongDAL
    {
        private DBConnect db = new DBConnect();

        //Read
        public DataTable LayPhong()
        {
            string query = "SELECT * FROM PHONG";
            return db.ExecuteQuery(query);
        }

        //Insert
        public void ThemPhong(string maPhong, string tenPhong, string viTri)
        {
            string query = "INSERT INTO PHONG (MAPHONG, TENPHONG, VITRI) VALUES (:maPhong, :tenPhong, :viTri)";
            using (OracleConnection con = db.GetConnection())
            {
                con.Open();
                OracleCommand cmd = new OracleCommand(query, con);
                cmd.Parameters.Add(new OracleParameter("maPhong", maPhong));
                cmd.Parameters.Add(new OracleParameter("tenPhong", tenPhong));
                cmd.Parameters.Add(new OracleParameter("viTri", viTri));
                cmd.ExecuteNonQuery();
            }
        }


        //Update
        public void CapNhatPhong(string maPhong, string tenPhongMoi, string viTriMoi)
        {
            string query = "UPDATE PHONG SET TENPHONG = :tenPhongMoi, VITRI = :viTriMoi WHERE MAPHONG = :maPhong";
            using (OracleConnection con = db.GetConnection())
            {
                con.Open();
                OracleCommand cmd = new OracleCommand(query, con);
                cmd.Parameters.Add(new OracleParameter("maPhong", maPhong));
                cmd.Parameters.Add(new OracleParameter("tenPhongMoi", tenPhongMoi));
                cmd.Parameters.Add(new OracleParameter("viTriMoi", viTriMoi));
                cmd.ExecuteNonQuery();
            }
        }


        //Delete
        public void XoaPhong(string maPhong)
        {
            string query = "DELETE FROM PHONG WHERE MAPHONG = :maPhong";
            using (OracleConnection con = db.GetConnection())
            {
                con.Open();
                OracleCommand cmd = new OracleCommand(query, con);
                cmd.Parameters.Add(new OracleParameter("maPhong", maPhong));
                cmd.ExecuteNonQuery();
            }
        }


    }
}
