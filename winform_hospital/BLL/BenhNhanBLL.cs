using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class BenhNhanBLL
    {
        private BenhNhanDAL bnDAL = new BenhNhanDAL();

        // Lấy danh sách bệnh nhân (Offline)
        public DataTable LayDanhSachBenhNhan()
        {
            return bnDAL.LayDanhSachBenhNhan();
        }

        public DataTable TimKiemTenBenhNhan(string keyword)
        {
            return bnDAL.TimKiemTenBenhNhan(keyword);
        }
    }
}
