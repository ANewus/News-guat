using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.admin
{
    public partial class report_check : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "pass")
            {

                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();
                del(Uid);

            }
            else if (e.CommandName == "chakan")
            {
                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();             
                string url = "../home/news/datail.aspx?id=" + Uid;
                Response.Write("<script>window.open('" + url + "','newwindow')</script>");
            }
            else if (e.CommandName == "rdel")
            {
                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();
                reportdel(Uid);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.Report report = new Model.Report();
            BLL.ReportBLL reportBLL = new BLL.ReportBLL();

            report.title = Request["search"].ToString().Trim();
            reportBLL.SearchTitle(report);
            this.SqlDataSource1.SelectCommand = report.sql;

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string h = "select * from report";
            this.SqlDataSource1.SelectCommand = h;
            this.GridView1.DataBind();
        }

        #region 删除新闻
        public void del(string id)
        {
            Model.News news = new Model.News();
            news.id = id;
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            if (newsBLL.DelNews(news))
            {
                Response.Write("<script>alert('删除成功');location.href='report_check.aspx'</script>");
            }
        }
        #endregion

        #region 删除举报
        public void reportdel(string id)
        {
            Model.Report report = new Model.Report();
            report.newsid = id;
            BLL.ReportBLL reportBLL = new BLL.ReportBLL();
            reportBLL.DelReport(report);
        }
        #endregion
    }
}