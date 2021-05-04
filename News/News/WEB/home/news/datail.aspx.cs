using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace News.WEB.home.news
{
    public partial class datail : System.Web.UI.Page
    {
        public int k;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                k = Convert.ToInt32(Request["id"]);
                this.Label6.Text = k.ToString();
                //更新点击量
                Model.News news = new Model.News();
                news.id = k.ToString();
                BLL.NewsBLL newsBLL = new BLL.NewsBLL();
                newsBLL.UpdateClick(news);
            }
            chaxun(k);

        }

        public string CutStr(string s)
        {
            if (s.Length > 20)
            {
                s = s.Substring(0, 20) + "...";
            }
            return s;
        }



        #region 查找
        public void chaxun(int id)
        {

            Model.News news = new Model.News();
            news.id = id.ToString();
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            if (newsBLL.QueryNews(news))
            {
                this.Label1.Text = news.title.ToString();
                this.Label4.Text = news.author.ToString();
                this.Label3.Text = news.contents;
                this.Label2.Text = news.createTime.ToString();
                this.Label5.Text = news.category.ToString();
                this.Label7.Text = news.click.ToString();
                Page.Title = news.title.ToString();
            }
            else
                Response.Write("<script>alert('查询失败')</script>");

        }
        #endregion

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["id"] = this.Label6.Text;
            Response.Redirect("report_news.aspx?id=" + Session["id"]);//传递多个参数时，使用&符号作为多个参数之间的连接符
        }
        protected void click1(object sender, EventArgs e)
        {
            Session["search"] = Request["ssearch"].ToString();
            // Response.Write("<script>alert('" + search + "')</script>");
            Response.Redirect("search.aspx?search=" + Session["search"].ToString());
        }
    }
}