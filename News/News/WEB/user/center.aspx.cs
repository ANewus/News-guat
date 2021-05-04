using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.user
{
    public partial class center : System.Web.UI.Page
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
        public string CutStr3(string s)
        {
            if (s.Length > 15)
            {
                s = s.Substring(0, 15) + "...";
            }
            return s;
        }
        protected void click1(object sender, EventArgs e)
        {
            Session["search"] = Request["ssearch"].ToString();
            // Response.Write("<script>alert('" + search + "')</script>");
            Response.Redirect("../home/news/search.aspx?search=" + Session["search"].ToString());
        }
    }
}