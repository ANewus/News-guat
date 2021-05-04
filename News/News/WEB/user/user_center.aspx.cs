using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.user
{
    public partial class user_center : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["account"] == null)
            {
                Response.Write("<script>alert('请先登录！');window.location.href='../system/login.aspx'</script>");
            }
            else
            {
                this.Label1.Text = Session["account"].ToString();
            }

        }
    }
}