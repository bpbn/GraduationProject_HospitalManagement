using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class LichLamViecBLL
    {
        private LichLamViecDAL llv = new LichLamViecDAL();
        private Random random = new Random(); // Khởi tạo Random một lần

        public DataTable LayDuLieuLichLamViec()
        {
            return llv.LayLichLamViec();
        }

        // Phương thức xếp lịch làm việc tự động
        public void TaoLichLamViec(DataTable bacSiList, DataTable phongList, DateTime[] ngayLamViecList)
        {
            List<(string MaLich, string MaBacSi, string MaPhong, DateTime NgayLamViec)> lichLamViec = new List<(string, string, string, DateTime)>();

            // Thuật toán vét cạn: Duyệt qua tất cả các ngày
            foreach (var ngayLamViec in ngayLamViecList)
            {
                // Duyệt qua các bác sĩ và phòng để xếp lịch cho ngày hiện tại
                TaoLichChoNgay(bacSiList, phongList, ngayLamViec, lichLamViec);
            }

            // Sau khi xếp lịch, thêm vào cơ sở dữ liệu
            foreach (var lich in lichLamViec)
            {
                llv.ThemLichLamViec(lich.MaLich, lich.MaBacSi, lich.MaPhong, lich.NgayLamViec);
            }
        }

        // Xếp lịch cho một ngày
        private void TaoLichChoNgay(DataTable bacSiList, DataTable phongList, DateTime ngayLamViec, List<(string, string, string, DateTime)> lichLamViec)
        {
            List<string> bacSiDaXepLich = new List<string>(); // Danh sách các bác sĩ đã được xếp lịch trong ngày đó
            List<string> phongDaXepLich = new List<string>(); // Danh sách các phòng đã được xếp lịch

            // Random hóa thứ tự bác sĩ và chuyển đổi thành danh sách
            List<DataRow> shuffledBacSi = bacSiList.AsEnumerable().OrderBy(x => random.Next()).ToList();

            foreach (DataRow phong in phongList.Rows)
            {
                string maPhong = phong["MAPHONG"].ToString();
                // Duyệt qua danh sách bác sĩ đã random
                for (int i = shuffledBacSi.Count - 1; i >= 0; i--)
                {
                    DataRow bacSi = shuffledBacSi[i];
                    string maBacSi = bacSi["MABACSI"].ToString();
                    // Kiểm tra xem bác sĩ hoặc phòng đã được xếp trong ngày đó chưa
                    if (!bacSiDaXepLich.Contains(maBacSi) && !phongDaXepLich.Contains(maPhong))
                    {
                        // Tạo mã lịch ngẫu nhiên
                        string maLich = TaoMaLich();

                        // Thêm bác sĩ và phòng vào danh sách đã xếp lịch
                        bacSiDaXepLich.Add(maBacSi);
                        phongDaXepLich.Add(maPhong);

                        // Thêm lịch vào danh sách lịch làm việc
                        lichLamViec.Add((maLich, maBacSi, maPhong, ngayLamViec));

                        // Xóa bác sĩ đã xếp lịch khỏi danh sách
                        shuffledBacSi.RemoveAt(i);
                        break; // Bác sĩ này đã được xếp, chuyển qua bác sĩ tiếp theo
                    }
                }
            }
        }

        // Phương thức tạo mã lịch ngẫu nhiên gồm 10 ký tự (chữ cái và số)
        private string TaoMaLich()
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"; // Các ký tự có thể sử dụng
            return new string(Enumerable.Repeat(chars, 10) // Lặp lại để lấy 10 ký tự
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
    }

}
