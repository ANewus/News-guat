using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.home.news
{
    public partial class report_news : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Label1.Text = Session["id"].ToString(); ;
            chaxun(this.Label1.Text.ToString());
        }
        #region 查找
        public void chaxun(string id)
        {
            Model.News news = new Model.News();
            news.id = id;
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            if (newsBLL.QueryNews(news))
            {
                this.Label1.Text = news.id.ToString();
                this.Label2.Text = news.title.ToString();
                Page.Title = "匿名举报新闻 -" + news.title.ToString();
            }
            else
                Response.Write("<script>alert('查询失败')</script>");
        }
        #endregion

        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.Report report = new Model.Report();
            report.newsid= this.Label1.Text.ToString();
            report.title = this.Label2.Text.ToString();
            report.contents = this.txtEditorContents.Text;
            report.reportTime = DateTime.Now.ToLocalTime().ToString();
            BLL.ReportBLL reportBLL = new BLL.ReportBLL();
            reportBLL.AddReport(report);
        }
    }
}