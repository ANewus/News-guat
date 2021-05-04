using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace DAL
{
   public class ContributeDAL
    {
        //查询投稿
        public bool QueryContribute(Model.Contribute contribute)
        {
            string SQL = "select * from contribute where id='" + contribute.id + "'";
            DataSet ds = DBHelper.GetDataSet(SQL);
            if (ds.Tables[0].Rows.Count > 0)
            {
                contribute.username = ds.Tables[0].Rows[0][1].ToString();
                contribute.category = ds.Tables[0].Rows[0][2].ToString();
                contribute.title = ds.Tables[0].Rows[0][3].ToString();
                contribute.author = ds.Tables[0].Rows[0][4].ToString();
                contribute.contents = ds.Tables[0].Rows[0][5].ToString();
                contribute.createTime = ds.Tables[0].Rows[0][6].ToString();
                
                return true;
            }
            else
            {
                return false;
            }
        }
      
        //搜索投稿---按title
        public bool SearchTitle(Model.Contribute contribute)
        {
            string SQL;
            SQL = "select * from contribute where title like '%" + contribute.title + "%'";
            contribute.sql = SQL;
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
        //搜索投稿---按category
        public bool SearchCategory(Model.Contribute contribute)
        {
            string SQL;
            SQL = "select * from contribute where category like '%" + contribute.category + "%'";
            contribute.sql = SQL;
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
        //搜索投稿---按username
        public bool SearchUsername(Model.Contribute contribute)
        {
            string SQL;
            SQL = "select * from contribute where username like '%" + contribute.username + "%'";
            contribute.sql = SQL;
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

        //添加投稿
        public bool AddContribute(Model.Contribute contribute)
        {
            string SQL = "insert into contribute values('" + contribute.username + "','" + contribute.category + "','" + contribute.title + "','" + contribute.author + "','" + contribute.contents + "','" + contribute.createTime + "')";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                HttpContext.Current.Response.Write("<script>alert('投稿成功');location.href='contributes.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('投稿失败,请重试');</script>");
                return false;
            }
        }
        //更新投稿
        public bool UpdateContribute(Model.Contribute contribute)
        {
            string SQL = "update contribute set category = '"+ contribute.category + "',title = '"+ contribute.title + "',author = '"+ contribute.author + "',contents = '"+ contribute.contents + "',createTime = '"+ contribute.createTime + "' where id = '" + contribute.id + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                HttpContext.Current.Response.Write("<script>alert('更新成功');location.href='contributes.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('更新失败,请重试');</script>");
                return false;
            }
        }
        //删除投稿
        public bool DelContribute(Model.Contribute contribute)
        {
            string SQL = "DELETE from contribute where id='" + contribute.id + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
               // HttpContext.Current.Response.Write("<script>alert('删除成功');location.href='contributes.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('删除失败,请重试');</script>");
                return false;
            }
        }
    }
}
