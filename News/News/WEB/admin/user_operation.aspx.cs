using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.admin
{
    public partial class user_operation : System.Web.UI.Page
    {
        public string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            s = Request["id"].ToString();
            //Response.Write(s);
            query(s);
        }
        #region 查询
        public void query(string id)
        {

            Model.User user = new Model.User();
            user.id = id;
            BLL.UserBLL userBLL = new BLL.UserBLL();
            if (userBLL.QueryUser(user))
            {
                this.Label1.Text = user.id.ToString();
                this.Label2.Text = user.username.ToString();
                this.Label3.Text = user.password.ToString();
                this.Label4.Text = user.email.ToString();
                this.Label5.Text = user.realname.ToString();

            }
            else
                Response.Write("<script>alert('查询失败')</script>");       

        }
        #endregion

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.DropDownList1.SelectedValue == "删除用户")
            {
                Model.User user = new Model.User();
                user.id = s;
                BLL.UserBLL userBLL = new BLL.UserBLL();
                userBLL.DelUser(user);
            }
            else if (this.DropDownList1.SelectedValue == "重置密码")
            {
                Model.User user = new Model.User();
                user.id = s;
                BLL.UserBLL userBLL = new BLL.UserBLL();
                if (userBLL.UpdateUser(user))
                {
                    Response.Write("<script>alert('重置密码成功,新密码为:123456');location.href='user_management.aspx'</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('请选择操作！')</script>");
            }
        }
    }
}