using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class AdminBLL
    {
        DAL.AdminDAL db = new DAL.AdminDAL();
        public bool Login(Model.Admin admin)
        {
            return db.Login(admin);
        }
    }
}
