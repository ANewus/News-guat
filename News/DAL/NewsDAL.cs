using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace DAL
{
   public class NewsDAL
    {
        //查询新闻
        public bool QueryNews(Model.News news)
        {
            string SQL = "select * from news where id='" + news.id + "'";
            DataSet ds = DBHelper.GetDataSet(SQL);
            if (ds.Tables[0].Rows.Count > 0)
            {
                news.category = ds.Tables[0].Rows[0][1].ToString();
                news.title = ds.Tables[0].Rows[0][2].ToString();
                news.author= ds.Tables[0].Rows[0][3].ToString();
                news.contents= ds.Tables[0].Rows[0][4].ToString();
                news.createTime = ds.Tables[0].Rows[0][5].ToString();
                news.click = ds.Tables[0].Rows[0][6].ToString();
                return true;
            }
            else
            {
                return false;
            }
        }
       /* //搜索新闻
        public bool SearchNews(Model.News news)
        {
            string SQL;
            if (Convert.ToInt32(news.conditions) == 0)
            {
                 SQL = "select * from news where title like '%" + news.title + "%'";
                news.sql = SQL;
            }
            else
            {
                SQL = "select * from news where category like '%" + news.category + "%'";
                news.sql = SQL;

            }
            DataSet ds = DBHelper.GetDataSet(SQL);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }*/

        //搜索新闻---按title
        public bool SearchTitle(Model.News news)
        {
            string SQL;
            SQL = "select * from news where title like '%" + news.title + "%'";
            news.sql = SQL;
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
        //搜索新闻---按category
        public bool SearchCategory(Model.News news)
        {
            string SQL;
            SQL = "select * from news where category like '%" + news.category + "%'";
            news.sql = SQL;
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
        //添加新闻
        public bool AddNews(Model.News news)
        {
            string SQL = "insert into news values('" + news.category + "','" + news.title + "','" + news.author + "','" + news.contents + "','"+ news.createTime+"','"+news.click+"')";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                HttpContext.Current.Response.Write("<script>alert('添加成功');location.href='choose.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('添加失败,请重试');</script>");
                return false;
            }
        }
        //更新新闻
        public bool UpdateNews(Model.News news)
        {
            string SQL = "update news set category='"+ news.category + "',title='" + news.title + "',author='" + news.author + "',contents='" + news.contents + "',createTime='" + news.createTime + "' where id='" + news.id + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                HttpContext.Current.Response.Write("<script>alert('更新成功');location.href='choose.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('更新失败,请重试');</script>");
                return false;
            }
        }
        //删除新闻
        public bool DelNews(Model.News news)
        {
            string SQL = "DELETE from news where id='" + news.id + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
               // HttpContext.Current.Response.Write("<script>alert('删除成功');location.href='choose.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('删除失败,请重试');</script>");
                return false;
            }
        }
        //更新点击
        public bool UpdateClick(Model.News news)
        {
            string SQL = "update news set click=click+1 where id ='" + news.id + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
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
