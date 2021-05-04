using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace News.WEB.home.news
{
    public partial class search : System.Web.UI.Page
    {
        //public string sou;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["category"] != null)
            {
                Model.News news = new Model.News();
                news.category = Request.QueryString["category"].ToString();
                BLL.NewsBLL newsBLL = new BLL.NewsBLL();
                if (newsBLL.SearchCategory(news))
                {
                    this.SqlDataSource1.SelectCommand = news.sql;
                }

            }
            else if (Session["search"] == null)
            {
                this.ssearch.Value = "";


            }
            else if (Session["search"] != null)
            {
                // sou = Session["search"].ToString();
                ss(Session["search"].ToString());

            }

        }

        protected void click1(object sender, EventArgs e)
        {
            ss(Request["ssearch"].ToString());
        }

        #region 搜索title
        public void ss(string sousuo)
        {

            Model.News news = new Model.News();
            news.title = sousuo;
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            if (newsBLL.SearchTitle(news))
            {
                this.SqlDataSource1.SelectCommand = news.sql;
            }

        }
        #endregion

    }
}