using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

namespace News.WEB.admin
{
    public partial class update : System.Web.UI.Page
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
            Model.News news = new Model.News();
            news.id = s;
            news.category = DropDownList1.SelectedItem.Text;
            news.title = Request["ttitle"].ToString();
            news.author = Request["author"].ToString();
            news.contents = this.txtEditorContents.Text;
            news.createTime = DateTime.Now.ToLocalTime().ToString();
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            newsBLL.UpdateNews(news);
        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            Model.News news = new Model.News();
            news.id = s;
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            if (newsBLL.DelNews(news))
            {
                Response.Write("<script>alert('删除成功');location.href='choose.aspx'</script>");
            }
        }
        #region 查询
        public void query(string id)
        {
            Model.News news = new Model.News();
            news.id = id;
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            if (newsBLL.QueryNews(news))
            {
                this.ttitle.Value = news.title.ToString();
                this.author.Value = news.author.ToString();
                this.txtEditorContents.Text = news.contents;
            }
            else
                Response.Write("<script>alert('查询失败')</script>");
        }
        #endregion
    }



}
