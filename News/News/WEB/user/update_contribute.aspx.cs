using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.user
{
    public partial class update_contribute : System.Web.UI.Page
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
                s = Request["id"].ToString();
                query(s);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.Contribute contribute = new Model.Contribute();
            contribute.id = s;
            contribute.category = DropDownList1.SelectedItem.Text;
            contribute.title = Request["ttitle"].ToString();
            contribute.author = Request["author"].ToString();
            contribute.contents = this.txtEditorContents.Text;
            contribute.createTime = DateTime.Now.ToLocalTime().ToString();
            BLL.ContributeBLL contributeBLL = new BLL.ContributeBLL();
            contributeBLL.UpdateContribute(contribute);
        }




        #region 查询
        public void query(string id)
        {

            Model.Contribute contribute = new Model.Contribute();
            contribute.id = id;
            BLL.ContributeBLL contributeBLL = new BLL.ContributeBLL();
            if (contributeBLL.QueryContribute(contribute))
            {
                this.ttitle.Value = contribute.title.ToString();
                this.author.Value = contribute.author.ToString();
                this.txtEditorContents.Text = contribute.contents;
            }
            else
                Response.Write("<script>alert('查询失败')</script>");

        }
        #endregion


        protected void Button2_Click1(object sender, EventArgs e)
        {
            Model.Contribute contribute = new Model.Contribute();
            contribute.id = s;
            BLL.ContributeBLL contributeBLL = new BLL.ContributeBLL();
            if (contributeBLL.DelContribute(contribute))
            {
                Response.Write("<script>alert('删除成功');window.location.href='contributes.aspx'</script>");
            }
        }
    }
}