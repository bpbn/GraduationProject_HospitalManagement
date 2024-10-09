using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace winform_hospital.DAL
{
    internal class DBConnect
    {
        string conStr = "User Id=sys;Password=123;Data Source=localhost:1521/orcl21;DBA Privilege=SYSDBA;";

        public OracleConnection GetConnection()
        {
            return new OracleConnection(conStr);
        }

        // Phương thức thực hiện lệnh Insert/Update/Delete
        public bool ExecuteNonQuery(string query, OracleParameter[] parameters = null)
        {
            try
            {
                using (OracleConnection con = GetConnection())
                {
                    con.Open();
                    using (OracleCommand cmd = new OracleCommand(query, con))
                    {
                        if (parameters != null)
                        {
                            cmd.Parameters.AddRange(parameters);
                        }
                        cmd.ExecuteNonQuery();
                    }
                }
                return true;
            }
            catch (OracleException ex)
            {
                MessageBox.Show($"Lỗi thực thi câu lệnh: {ex.Message}");
                return false;
            }
        }

        // Phương thức thực hiện lệnh Select
        public DataTable ExecuteQuery(string query, OracleParameter[] parameters = null)
        {
            DataTable dataTable = new DataTable();
            try
            {
                using (OracleConnection con = GetConnection())
                {
                    con.Open();
                    using (OracleCommand cmd = new OracleCommand(query, con))
                    {
                        if (parameters != null)
                        {
                            cmd.Parameters.AddRange(parameters);
                        }
                        OracleDataAdapter adapter = new OracleDataAdapter(cmd);
                        adapter.Fill(dataTable);

                        //// Kiểm tra số bản ghi lấy được
                        //if (dataTable.Rows.Count == 0)
                        //{
                        //    MessageBox.Show("Không có dữ liệu nào được trả về.");
                        //}
                    }
                }
            }
            catch (OracleException ex)
            {
                MessageBox.Show($"Lỗi thực thi câu lệnh: {ex.Message}");
            }
            return dataTable;
        }

        //private void ConnectToOracle()
        //{
        //    try { 
        //        using (OracleConnection con = new OracleConnection(conStr))
        //        {
        //            con.Open();
        //            MessageBox.Show("Kết nối thành công với SYSDBA!");
        //        }
        //    }
        //    catch (OracleException ex)
        //    {
        //        MessageBox.Show($"Lỗi kết nối: {ex.Message}");
        //    }
        //}
    }
}
