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
    public partial class add : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.News news = new Model.News();
            news.category= DropDownList1.SelectedItem.Text;
            news.title= Request["title"].ToString();
            news.author= Request["author"].ToString();
            news.contents = this.txtEditorContents.Text;
            news.createTime = DateTime.Now.ToLocalTime().ToString();
            int click = 0;
            news.click = click.ToString();
            BLL.NewsBLL newsBLL = new BLL.NewsBLL();
            newsBLL.AddNews(news);
            
        }
    }
}