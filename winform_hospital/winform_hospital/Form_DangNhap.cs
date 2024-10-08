using Oracle.DataAccess.Client;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace winform_hospital
{
    public partial class Form_DangNhap : Form
    {
        public Form_DangNhap()
        {
            InitializeComponent();
        }

        string conStr = "User Id=sys;Password=123;Data Source=localhost:1521/orcl21;DBA Privilege=SYSDBA;";
        private void ConnectToOracle()
        {
            try
            {
                using (OracleConnection con = new OracleConnection(conStr))
                {
                    con.Open();
                    MessageBox.Show("Kết nối thành công với SYSDBA!");
                }
            }
            catch (OracleException ex)
            {
                MessageBox.Show($"Lỗi kết nối: {ex.Message}");
            }
        }

        private void Form_DangNhap_Load(object sender, EventArgs e)
        {
            ConnectToOracle();
        }
    }
}
