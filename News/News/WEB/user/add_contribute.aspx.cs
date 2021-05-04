using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.user
{
    public partial class contribute : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.Contribute contribute = new Model.Contribute();
            contribute.username = this.Label1.Text.ToString();
            contribute.category = DropDownList1.SelectedItem.Text;
            contribute.title = Request["title"].ToString();
            contribute.author = Request["author"].ToString();
            contribute.contents = this.txtEditorContents.Text;
            contribute.createTime = DateTime.Now.ToLocalTime().ToString();
            BLL.ContributeBLL contributeBLL = new BLL.ContributeBLL();
            contributeBLL.AddContribute(contribute);
        }
    }
}