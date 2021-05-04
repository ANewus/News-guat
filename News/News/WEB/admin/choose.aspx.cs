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
    public partial class choose : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string h = "select * from news";
            this.SqlDataSource1.SelectCommand = h;
            this.GridView1.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "xuanze")
            {
                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();
                Response.Redirect("update.aspx?id=" + Uid);

            }
            else if(e.CommandName == "chakan")
            {
                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();
                string url = "../home/news/datail.aspx?id=" + Uid;
                Response.Write("<script>window.open('" + url + "','newwindow')</script>");
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            Model.News news = new Model.News();
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            if (this.DropDownList1.SelectedValue == "按标题")
            {
               
                news.title = Request["search"].ToString().Trim();
                newsBLL.SearchTitle(news);
                this.SqlDataSource1.SelectCommand = news.sql;

            }
            else if (this.DropDownList1.SelectedValue == "按类别")
            {
                
                news.category = Request["search"].ToString().Trim();
                newsBLL.SearchCategory(news);
                this.SqlDataSource1.SelectCommand = news.sql;

            }
  
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            string h = "select * from news";
            this.SqlDataSource1.SelectCommand = h;
            this.GridView1.DataBind();
        }

    }
}