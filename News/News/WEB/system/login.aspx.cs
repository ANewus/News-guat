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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Model.User user = new Model.User();
            user.username = Request["inputAccount"].ToString().Trim();
            user.password = Request["inputPassword"].ToString().Trim();
            BLL.UserBLL ub = new BLL.UserBLL();
            if (ub.Login(user))
            {
                Session["account"] = Request["inputAccount"].ToString().Trim();
                Response.Redirect("../../main.aspx?account=" + Session["account"].ToString());
            }
            else
                Response.Write("<script>alert('登陆失败')</script>");

        }
    }
}