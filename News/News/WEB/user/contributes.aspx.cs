using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.user
{
    public partial class contributes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["account"] == null)
            {
                Response.Write("<script>alert('请先登录！');window.location.href='Login.aspx'</script>");
            }
            else
            {
                string h = "SELECT * FROM contribute where username='" + Session["account"].ToString() + "'";
                this.SqlDataSource1.SelectCommand = h;
                this.GridView1.DataBind();
            }

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "xuanze")
            {


                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();
                Response.Redirect("update_contribute.aspx?id=" + Uid);

            }
        }
    }
}