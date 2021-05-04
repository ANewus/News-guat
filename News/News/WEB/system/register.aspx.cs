using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace News.WEB.system
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void user_register_Click(object sender, EventArgs e)
        {
            Model.User user = new Model.User();
            user.username = Request["inputAccount"].ToString();
            user.password = Request["inputPassword"].ToString();
            user.email = this.inputEmail.Text.Trim();
            user.realname = Request["realname"].ToString();
            BLL.UserBLL ub = new BLL.UserBLL();
            ub.Register(user);
        }
    }
}