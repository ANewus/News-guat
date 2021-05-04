using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.admin
{
    public partial class passtougao : System.Web.UI.Page
    {
        public string s;
        protected void Page_Load(object sender, EventArgs e)
        {
            s = Request["id"].ToString();
            //Response.Write(s);
            query(s);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            newsupdate();
            del();
        }




        #region 查询
        public void query(string id)
        {
            Model.Contribute contribute = new Model.Contribute();
            contribute.id = id;
            BLL.ContributeBLL contributeBLL = new BLL.ContributeBLL();
            if (contributeBLL.QueryContribute(contribute))
            {
                this.Label1.Text = contribute.username.ToString();
                this.ttitle.Value = contribute.title.ToString();
                this.author.Value = contribute.author.ToString();
                this.txtEditorContents.Text = contribute.contents;
            }
            else
                Response.Write("<script>alert('查询失败')</script>");

        }
        #endregion

        #region 通过投稿
        public void newsupdate()
        {
            Model.News news = new Model.News();
            news.category = DropDownList1.SelectedItem.Text;
            news.title = Request["ttitle"].ToString();
            news.author = Request["author"].ToString();
            news.contents = this.txtEditorContents.Text;
            news.createTime = DateTime.Now.ToLocalTime().ToString();
            int click = 0;
            news.click = click.ToString();
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            newsBLL.AddNews(news);

        }

        #endregion

        #region 删除
        public void del()
        {
            Model.Contribute contribute = new Model.Contribute();
            contribute.id = s;
            BLL.ContributeBLL contributeBLL = new BLL.ContributeBLL();
            if (contributeBLL.DelContribute(contribute))
            {
                Response.Write("<script>alert('删除稿件成功');window.location.href='checktougao.aspx'</script>");
            }
        }
        #endregion
        protected void Button2_Click1(object sender, EventArgs e)
        {
            del();
        }
    }
}