using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace DAL
{
   public class ReportDAL
    {
        //添加举报
        public bool AddReport(Model.Report report)
        {
            string SQL = "insert into report values('"+ report.newsid+ "','" + report.title+ "','" + report.contents + "','" + report.reportTime+ "')";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                HttpContext.Current.Response.Write("<script>alert('匿名举报成功！');location.href='../../../main.aspx';</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('举报失败,请重试');</script>");
                return false;
            }
        }
        //删除举报
        public bool DelReport(Model.Report report)
        {
            string SQL = "DELETE from report where newsid='" + report.newsid + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                HttpContext.Current.Response.Write("<script>alert('删除成功');location.href='report_check.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('删除失败,请重试');</script>");
                return false;
            }
        }
        //搜索举报---按title
        public bool SearchTitle(Model.Report report)
        {
            string SQL;
            SQL = "select * from report where title like '%" + report.title + "%'";
            report.sql = SQL;
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
    }
}
