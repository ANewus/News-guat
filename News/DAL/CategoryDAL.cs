using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace DAL
{
   public class CategoryDAL
    {
        //添加分类
        public bool AddCategory(Model.Category category)
        {
            string SQL = "insert into news_categore values('"+ category.name+"')";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                HttpContext.Current.Response.Write("<script>alert('添加成功');location.href='categore.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('添加失败,请重试');</script>");
                return false;
            }
        }
        //删除分类
        public bool DelCategory(Model.Category category)
        {
            string SQL = "DELETE from news_categore where id='" + category.id + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                HttpContext.Current.Response.Write("<script>alert('删除成功');location.href='categore.aspx'</script>");
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
