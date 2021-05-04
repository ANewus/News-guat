using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News.WEB.system
{
    public partial class exitaccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
                Session.Clear();
                Response.Write("<script>alert('退出成功！');window.location.href='../../main.aspx'</script>");
          
        }
    }
}