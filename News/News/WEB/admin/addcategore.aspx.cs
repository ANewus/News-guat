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
    public partial class addcategore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Model.Category category = new Model.Category();
            category.name = Request["categore"].ToString();
            BLL.CategoryBLL categoryBLL = new BLL.CategoryBLL();
            categoryBLL.AddCategory(category);
        }
    }
}