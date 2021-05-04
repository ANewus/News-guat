using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.user
{
    public partial class retrieve_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Model.User user = new Model.User();
            user.username = this.username.Text.Trim();
            BLL.UserBLL userBLL = new BLL.UserBLL();
            if (userBLL.Query(user))
            {
                if (this.email.Text.Trim() == user.email.ToString())
                {
                    if (this.realname.Text.Trim() == user.realname)
                    {
                        if (userBLL.UpdateUser(user))
                        {
                            Response.Write("<script>alert('重置密码成功,新密码为:123456.登陆后请立即修改密码！');location.href='../system/login.aspx'</script>");
                        }
                    }
                    else
                        Response.Write("<script>alert('真实姓名错误！')</script>");
                }
                else
                    Response.Write("<script>alert('邮箱错误！')</script>");
            }
            else
                Response.Write("<script>alert('无该用户！')</script>");

        }
    }
}