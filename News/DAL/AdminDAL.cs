using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace DAL
{
   public class AdminDAL
    {   
        //登陆
        public bool Login(Model.Admin admin)
        {
            string SQL = "select * from admin where adname='" + admin.adname + "'";
            DataSet ds = DBHelper.GetDataSet(SQL);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        //判断是否管理员
        public bool Ad(Model.Admin admin)
        {
            string SQL = "select * from admin where adname='" + admin.adname + "'";
            DataSet ds = DBHelper.GetDataSet(SQL);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('非管理员用户');window.close()</script>");
                return false;
            }

        }
    }
}
