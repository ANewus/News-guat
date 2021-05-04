using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.home.common
{
    public partial class header : System.Web.UI.UserControl
    {
        string s;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void click1(object sender, EventArgs e)
        {
             s= Request["search"].ToString();
            Response.Write("<script>alert('" + s + "')</script>");
           // Response.Redirect("search.aspx?search=" + Session["search"].ToString());
        }

    }
}