using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Drawing;
using System.IO;
using System.Data.SqlClient;
using System.Data;

namespace News.WEB.system
{
    public partial class admin_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            Model.Admin admin = new Model.Admin();
            admin.adname = Request["inputAccount"].ToString().Trim();
            admin.adpassword = Request["inputPassword"].ToString().Trim();
            BLL.AdminBLL ub = new BLL.AdminBLL();
            if (ub.Login(admin))
            {
                string name;
                name = "../admin/admin.aspx?name=" + Request["inputAccount"].ToString().Trim();
                Response.Redirect(name);
            }
            else
                Response.Write("<script>alert('登陆失败')</script>");

        }
    }
}