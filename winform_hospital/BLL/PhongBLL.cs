using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class PhongBLL
    {
        private PhongDAL phongDAL = new PhongDAL();

        public DataTable LayDuLieuPhong()
        {
            return phongDAL.LayPhong();
        }

        // Lấy tên phòng từ mã phòng
        public string LayTenPhong(string maPhong)
        {
            return phongDAL.LayTenPhong(maPhong);
        }
    }
}
