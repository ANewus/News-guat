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
    public partial class categore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "del")
            {
               

                int k = Convert.ToInt32(e.CommandArgument);
                string Uid = this.GridView1.DataKeys[k].Value.ToString();
                del(Uid);

            }
           
        }
        #region 删除
        public void del(string id)
        {

            Model.Category category = new Model.Category();
            category.id = id;
            BLL.CategoryBLL categoryBLL = new BLL.CategoryBLL();
            categoryBLL.DelCategory(category);
        }
        #endregion
    }
}