using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;


namespace BLL
{
    public class BacSiBLL
    {
        private BacSiDAL bacSiDAL = new BacSiDAL();

        public DataTable LayDuLieuBacSi()
        {
            return bacSiDAL.LayBacSi();
        }
    }
}
