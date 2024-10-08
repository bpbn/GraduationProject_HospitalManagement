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

namespace winform_hospital.UC
{
    public partial class UC_LapLichLamViec : UserControl
    {
        public UC_LapLichLamViec()
        {
            InitializeComponent();
        }

        private LichLamViecBLL llvBLL = new LichLamViecBLL();
        private BacSiBLL bacSiBLL = new BacSiBLL();
        private PhongBLL phongBLL = new PhongBLL();

        private void LoadLichLamViec()
        {
            DataTable dt = llvBLL.LayDuLieuLichLamViec();
            dgvLichLamViec.DataSource = dt;

            // Sắp xếp theo cột ngày "SCHEDULE_DATE" giảm dần
            dgvLichLamViec.Sort(dgvLichLamViec.Columns["NGAYLAM"], ListSortDirection.Descending);
        }

        private void UC_LapLichLamViec_Load(object sender, EventArgs e)
        {
            LoadLichLamViec();
        }

        private void btnXepLich_Click(object sender, EventArgs e)
        {
            // Lấy ngày bắt đầu và ngày kết thúc từ DateTimePicker
            DateTime startDate = dtpNgayBatDau.Value;
            DateTime endDate = dtpNgayKetThuc.Value;

            if (startDate > endDate)
            {
                MessageBox.Show("Ngày bắt đầu phải nhỏ hơn hoặc bằng ngày kết thúc.");
                return;
            }

            // Tạo danh sách các ngày cần xếp lịch
            DateTime[] ngayLamViecList = DSNgayLam(startDate, endDate);

            // Lấy DataTable bác sĩ và phòng từ cơ sở dữ liệu
            DataTable bacSiTable = bacSiBLL.LayDuLieuBacSi(); // Phương thức lấy DataTable từ cơ sở dữ liệu
            DataTable phongTable = phongBLL.LayDuLieuPhong(); // Phương thức lấy DataTable từ cơ sở dữ liệu

            // Gọi phương thức xếp lịch với DataTable
            llvBLL.TaoLichLamViec(bacSiTable, phongTable, ngayLamViecList);

            // Thông báo xếp lịch thành công
            MessageBox.Show("Xếp lịch thành công!");

            LoadLichLamViec();
        }

        private DateTime[] DSNgayLam(DateTime startDate, DateTime endDate)
        {
            List<DateTime> workingDays = new List<DateTime>();

            for (DateTime date = startDate; date <= endDate; date = date.AddDays(1))
            {
                // Kiểm tra nếu ngày là ngày làm việc (ví dụ: không phải thứ 7, chủ nhật)
                if (date.DayOfWeek != DayOfWeek.Saturday && date.DayOfWeek != DayOfWeek.Sunday)
                {
                    workingDays.Add(date);
                }
            }

            return workingDays.ToArray(); // Trả về mảng các ngày làm việc
        }

    }
}
