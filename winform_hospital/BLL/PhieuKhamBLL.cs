using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class PhieuKhamBLL
    {
        private PhieuKhamDAL dal = new PhieuKhamDAL();

        // Tính toán số thứ tự khám dựa trên số phiếu khám trong ngày
        public int LaySTTKhamTheoNgay(DateTime ngayHienTai)
        {
            int soPhieuKham = dal.DemSoPhieuKhamTheoNgay(ngayHienTai);
            return soPhieuKham + 1; // Tăng 1 để lấy số thứ tự khám tiếp theo
        }
    }
}
