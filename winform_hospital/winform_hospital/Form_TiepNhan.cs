using BLL;
using DAL;
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
    public partial class Form_TiepNhan : Form
    {
        private BenhNhanBLL bnBLL = new BenhNhanBLL();
        private PhieuDangKyBLL pdkBLL = new PhieuDangKyBLL();
        private PhongBLL phongBLL = new PhongBLL();

        public Form_TiepNhan()
        {
            InitializeComponent();
        }

        private void Form_TiepNhan_Load(object sender, EventArgs e)
        {
            txtTenNhanVien.Text = "Nguyễn Phan Như Quỳnh";
            rdoOff.Checked = true; // Mặc định chọn rdoOff
            lbDate.Text = DateTime.Now.ToString("dd/MM/yyyy");

            LoadPhongComboBox();
            //HienThiSTTTiepNhan();

            cboTenPhongKham.SelectedItem = null;
            txtMaPhong.Clear();
            HienThiSTTTiepNhanTheoNgayHienTai();
            HienThiSTTKham();
        }

        // Hiển thị danh sách bệnh nhân (Offline)
        private void HienThiDanhSachBenhNhan()
        {
            dgvBenhNhanDK.DataSource = bnBLL.LayDanhSachBenhNhan();
        }

        // Hiển thị danh sách phiếu đăng ký (Online)
        private void HienThiDanhSachPhieuDangKy()
        {
            dgvBenhNhanDK.DataSource = pdkBLL.LayDanhSachPhieuDangKy();
        }

        private void LoadPhongComboBox()
        {
            DataTable dtPhong = phongBLL.LayDuLieuPhong();
            cboTenPhongKham.DataSource = dtPhong;
            cboTenPhongKham.DisplayMember = "TENPHONG"; // Tên cột trong DataTable cho tên phòng
            cboTenPhongKham.ValueMember = "MAPHONG"; // Tên cột trong DataTable cho mã phòng
        }

        private void rdoOnl_CheckedChanged(object sender, EventArgs e)
        {
            if (rdoOnl.Checked)
            {
                //DateTime ngayHienTai = DateTime.Now.Date;
                //DataTable dtPhieuDangKy = pdkBLL.LayDanhSachPhieuDangKyTheoNgay(ngayHienTai);

                //dgvBenhNhanDK.DataSource = dtPhieuDangKy;

                HienThiDanhSachPhieuDangKy();


                btnThemBN.Visible = false;
                cbBHYT.Visible = false;
            }
        }

        private void rdoOff_CheckedChanged(object sender, EventArgs e)
        {
            if (rdoOff.Checked)
            {
                HienThiDanhSachBenhNhan();
                btnThemBN.Visible = true;
                cbBHYT.Visible = true;
            }
        }

        // Tìm kiếm bệnh nhân
        private void TimKiemBenhNhan()
        {
            string keyword = txtTimKiem.Text.Trim();
            if (string.IsNullOrEmpty(keyword))
            {
                if (rdoOff.Checked)
                    HienThiDanhSachBenhNhan();
                else if (rdoOnl.Checked)
                    HienThiDanhSachPhieuDangKy();
            }
            else
            {
                if (rdoOff.Checked)
                    dgvBenhNhanDK.DataSource = bnBLL.TimKiemTenBenhNhan(keyword);
                else if (rdoOnl.Checked)
                    dgvBenhNhanDK.DataSource = pdkBLL.TimKiemBHYTBenhNhan(keyword);
            }
        }

        private void txtTimKiem_TextChanged(object sender, EventArgs e)
        {
            TimKiemBenhNhan();
        }

        private void dgvBenhNhanDK_SelectionChanged(object sender, EventArgs e)
        {
            if (rdoOnl.Checked && dgvBenhNhanDK.SelectedRows.Count > 0)
            {
                // Lấy mã phiếu từ dòng đã chọn
                string maPhieu = dgvBenhNhanDK.SelectedRows[0].Cells["MAPHIEUDANGKY"].Value.ToString();

                // Lấy thông tin chi tiết phiếu đăng ký
                DataTable dt = pdkBLL.LayThongTinChiTietPhieuDangKy(maPhieu);
                if (dt.Rows.Count > 0)
                {
                    string tenBenhNhan = dt.Rows[0]["HOTEN"].ToString();
                    string sttTiepNhan = dt.Rows[0]["STTTIEPNHAN"].ToString();
                    string sttKham = dt.Rows[0]["STTKHAM"].ToString();
                    string bhyt = dt.Rows[0]["MABHYT"].ToString();
                    string maPhong = dt.Rows[0]["MAPHONG"].ToString();

                    // Lấy tên phòng khám từ mã phòng
                    string tenPhong = phongBLL.LayTenPhong(maPhong);

                    // Hiển thị thông tin lên các control (Label, TextBox, ...)
                    txtMaPhieu.Text = maPhieu;
                    txtTenBenhNhan.Text = tenBenhNhan;
                    txtSTTTiepNhan.Text = sttTiepNhan;
                    txtSTTKham.Text = sttKham;
                    txtBHYT.Text = bhyt;
                    cboTenPhongKham.Text = tenPhong;
                    txtMaPhong.Text = maPhong;
                }
            }

            if (rdoOff.Checked && dgvBenhNhanDK.SelectedRows.Count > 0)
            {
                Reset();
                // Lấy tên bệnh nhân từ dòng đã chọn
                string tenBenhNhan = dgvBenhNhanDK.SelectedRows[0].Cells["HOTEN"].Value.ToString();

                // Hiển thị tên bệnh nhân lên txtTenBenhNhan
                txtTenBenhNhan.Text = tenBenhNhan;
                string maPhieuDangKy = GenerateRandomCode(10);
                txtMaPhieu.Text = maPhieuDangKy;

                //HienThiSTTTiepNhan();
                HienThiSTTTiepNhanTheoNgayHienTai();
                HienThiSTTKham();
            }
        }

        public void Reset()
        {
            txtMaPhieu.Clear();
            txtBHYT.Clear();
            txtSTTTiepNhan.Clear();
            txtSTTKham.Clear();
            cbBHYT.Checked = false;
            rtxtLyDoKham.Clear();
        }

        private void cbBHYT_CheckedChanged(object sender, EventArgs e)
        {
            if (cbBHYT.Checked)
            {
                txtBHYT.Enabled = true;
            }
            else
                txtBHYT.Enabled=false;
        }

        private string GenerateRandomCode(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            Random random = new Random();
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        private void cboTenPhongKham_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cboTenPhongKham.SelectedValue != null)
            {
                // Lấy mã phòng từ giá trị của combo box
                string maPhong = cboTenPhongKham.SelectedValue.ToString();
                txtMaPhong.Text = maPhong; // Gán mã phòng vào TextBox
            }
        }

        private void HienThiSTTTiepNhan()
        {
            int soPhieu = pdkBLL.DemSoPhieuDangKy(); // Lấy số phiếu hiện có
            txtSTTTiepNhan.Text = (soPhieu + 1).ToString(); // Cộng 1 và gán vào txt
        }

        private void HienThiSTTTiepNhanTheoNgayHienTai()
        {
            DateTime ngayHienTai = DateTime.Now.Date;
            int sttTiepNhan = pdkBLL.LaySTTTiepNhanTheoNgay(ngayHienTai);

            // Hiển thị số thứ tự tiếp nhận vào textbox
            txtSTTTiepNhan.Text = sttTiepNhan.ToString();
        }

        private void HienThiSTTKham()
        {
            DateTime ngayHienTai = DateTime.Now.Date;
            PhieuKhamBLL phieuKhamBLL = new PhieuKhamBLL();
            int sttKham = phieuKhamBLL.LaySTTKhamTheoNgay(ngayHienTai);

            // Hiển thị số thứ tự khám vào textbox
            txtSTTKham.Text = sttKham.ToString();
        }


    }
}
