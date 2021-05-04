using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;

namespace DAL
{
   public class UserDAL
    {
        //注册
        public bool Register(Model.User user)
        {
            string SQL = "select * from news_user where username='" + user.username + "'";
            DataSet ds = DBHelper.GetDataSet(SQL);
            if (ds.Tables[0].Rows.Count > 0)  //存在该记录时
            {
                HttpContext.Current.Response.Write("<script>alert('用户名已存在，请更换用户名！');</script>");
                return false;
            }
            else
            {
                string SQL2 = "insert into news_user values('" + user.username + "','" + user.password + "','"+ user.email+"','" + user.realname+"')";
                bool iRet = DBHelper.ExecSql(SQL2);
                if (iRet)
                {
                    HttpContext.Current.Response.Write("<script>alert('注册成功');location.href='login.aspx'</script>");
                    return true;
                }
                else
                {
                    HttpContext.Current.Response.Write("<script>alert('注册失败');</script>");
                    return false;
                }

            }


        }
        //登陆
        public bool Login(Model.User user)
        {
            string SQL = "select * from news_user where username='" + user.username + "'";
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

        //查询用户信息
        public bool QueryUser(Model.User user)
        {
            string SQL = "select * from news_user where id ='" + user.id + "'";
            DataSet ds = DBHelper.GetDataSet(SQL);
            if (ds.Tables[0].Rows.Count > 0)
            {
                user.id = ds.Tables[0].Rows[0][0].ToString();
                user.username = ds.Tables[0].Rows[0][1].ToString();
                user.password = ds.Tables[0].Rows[0][2].ToString();
                user.email = ds.Tables[0].Rows[0][3].ToString();
                user.realname = ds.Tables[0].Rows[0][4].ToString();
                return true;
            }
            else
            {
                return false;
            }
        }
        //查询用户
        public bool Query(Model.User user)
        {
            string SQL = "select * from news_user where username like '%" + user.username + "%'";
            DataSet ds = DBHelper.GetDataSet(SQL);
            if (ds.Tables[0].Rows.Count > 0)
            {
                user.sql = SQL;
                user.id = ds.Tables[0].Rows[0][0].ToString();
                user.username = ds.Tables[0].Rows[0][1].ToString();
                user.password = ds.Tables[0].Rows[0][2].ToString();
                user.email = ds.Tables[0].Rows[0][3].ToString();
                user.realname = ds.Tables[0].Rows[0][4].ToString();
                return true;
            }
            else
            {
                return false;
            }
        }

        //删除用户
        public bool DelUser(Model.User user)
        {
            string SQL = "DELETE from news_user where id='" + user.id + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                HttpContext.Current.Response.Write("<script>alert('删除成功');location.href='user_management.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('删除失败,请重试');</script>");
                return false;
            }
        }
        //重置用户密码
        public bool UpdateUser(Model.User user)
        {
            string SQL = "update news_user set password='123456' where id='" + user.id + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
              //  HttpContext.Current.Response.Write("<script>alert('重置密码成功,新密码为:123456');location.href='user_management.aspx'</script>");
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('重置密码失败,请重试');</script>");
                return false;
            }
        }
        //用户更新密码
        public bool Updatepwd(Model.User user)
        {
            string SQL = "update news_user set password='" + user.password + "' where username='" + user.username + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('修改密码失败,请重试');</script>");
                return false;
            }
        }
        //更新用户信息
        public bool Updateinfo(Model.User user)
        {
            string SQL = "update news_user set email='"+user.email+"',realname='"+user.realname+"' where username='" + user.username + "'";
            bool iRet = DBHelper.ExecSql(SQL);
            if (iRet)
            {
                return true;
            }
            else
            {
                HttpContext.Current.Response.Write("<script>alert('修改信息失败,请重试');</script>");
                return false;
            }
        }

    }
}
