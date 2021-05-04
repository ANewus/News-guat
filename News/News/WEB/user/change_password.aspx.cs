using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.user
{
    public partial class change_password : System.Web.UI.Page
    {
        public string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["account"] == null)
            {
                Response.Write("<script>alert('请先登录！');window.location.href='../system/login.aspx'</script>");
            }
            else
            {

                this.Label1.Text = Session["account"].ToString();
                s = Session["account"].ToString();
               
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            xxupdate();
        }
       

        #region 更新
        public void xxupdate()
        {
            Model.User user = new Model.User();
            user.username = Session["account"].ToString();
            
            BLL.UserBLL userBLL = new BLL.UserBLL();
            if (userBLL.Query(user))
            {
                if (this.oldpwd.Text.Trim() == user.password.ToString())
                {
                    user.password = this.newpwd.Text.Trim();
                    if (userBLL.Updatepwd(user))
                    {
                        Response.Write("<script>alert('密码修改成功！');location.href='change_password.aspx'</script>");
                    }

                }
                else
                    Response.Write("<script>alert('旧密码错误！')</script>");
            }
            else
                Response.Write("<script>alert('无该用户！')</script>");

        }

        #endregion
    }
}