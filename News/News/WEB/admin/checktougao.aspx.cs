using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.admin
{
    public partial class checktougao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string h = "select * from contribute";
            this.SqlDataSource1.SelectCommand = h;
            this.GridView1.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "xuanze")
            {
                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();
                Response.Redirect("passtougao.aspx?id=" + Uid);

            }
            else if (e.CommandName == "ddel")
            {
                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();
                del(Uid);
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.Contribute contribute = new Model.Contribute();
            BLL.ContributeBLL contributeBLL = new BLL.ContributeBLL();
            if (this.DropDownList1.SelectedValue == "按标题")
            {
                contribute.title = Request["search"].ToString().Trim();
                contributeBLL.SearchTitle(contribute);
                this.SqlDataSource1.SelectCommand = contribute.sql;
            }
            else if (this.DropDownList1.SelectedValue == "按类别")
            {
                contribute.category = Request["search"].ToString().Trim();
                contributeBLL.SearchCategory(contribute);
                this.SqlDataSource1.SelectCommand = contribute.sql;

            }
            else if (this.DropDownList1.SelectedValue == "按投稿人")
            {
                contribute.username = Request["search"].ToString().Trim();
                contributeBLL.SearchUsername(contribute);
                this.SqlDataSource1.SelectCommand = contribute.sql;

            }
            
        }
        #region 删除
        public void del(string id)
        {

            Model.Contribute contribute = new Model.Contribute();
            contribute.id = id;
            BLL.ContributeBLL contributeBLL = new BLL.ContributeBLL();
            if (contributeBLL.DelContribute(contribute))
            {
                Response.Write("<script>alert('删除稿件成功');window.location.href='checktougao.aspx'</script>");
            }
        }
        #endregion
        protected void Button2_Click(object sender, EventArgs e)
        {
            string h = "select * from contribute";
            this.SqlDataSource1.SelectCommand = h;
            this.GridView1.DataBind();
        }
    }
}