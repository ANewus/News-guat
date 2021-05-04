using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.admin
{
    public partial class user_management : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string h = "select * from news_user";
            this.SqlDataSource1.SelectCommand = h;
            this.GridView1.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "xuanze")
            {
                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();
                Response.Redirect("user_operation.aspx?id=" + Uid);

            }
          
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            Model.User user = new Model.User();
            user.username = Request["search"].ToString().Trim();
            BLL.UserBLL userBLL = new BLL.UserBLL();
            if (userBLL.Query(user))
            {
                this.SqlDataSource1.SelectCommand = user.sql;

            }
            else
                Response.Write("<script>alert('无该用户！')</script>");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string h = "select * from news_user";
            this.SqlDataSource1.SelectCommand = h;
            this.GridView1.DataBind();
        }
    }
}