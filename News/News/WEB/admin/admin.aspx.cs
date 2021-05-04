using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace News.WEB.admin
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["name"] == null)
            {
                Response.Write("<script>alert('请先登录！');window.location.href='../system/admin_login.aspx'</script>");

            }
            else
            {
                Ad();
                this.Label1.Text = Request.QueryString["name"];
                
                
            }


        }
        #region 判断是否管理员
        public void Ad()
        {
            Model.Admin admin = new Model.Admin();
            admin.adname = Request.QueryString["name"].ToString();
            BLL.AdminBLL ub = new BLL.AdminBLL();
            ub.Login(admin);
            
        }
        #endregion
    }
}