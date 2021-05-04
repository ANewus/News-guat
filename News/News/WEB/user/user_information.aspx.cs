using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.user
{
    public partial class user_information : System.Web.UI.Page
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
                //Response.Write(s);
                query(s);
            }
        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            xxupdate();
        }
        #region 查询
        public void query(string id)
        {

            Model.User user = new Model.User();
            user.username = id;
            BLL.UserBLL userBLL = new BLL.UserBLL();
            if (userBLL.Query(user))
            {

                this.Label2.Text = user.email.ToString();
                this.Label3.Text = user.realname.ToString();

            }
            else
                Response.Write("<script>alert('查询失败')</script>");

        }
        #endregion

        #region 更新
        public void xxupdate()
        {
            Model.User user = new Model.User();
            user.username=s;
            user.email = this.email.Text.ToString();
            user.realname = this.realname.Text.ToString();
            BLL.UserBLL userBLL = new BLL.UserBLL();
            if (userBLL.Updateinfo(user))
            {
                Response.Write("<script>alert('信息更新成功！');location.href='user_information.aspx'</script>");
            }
        }

        #endregion

  

       
    }
}