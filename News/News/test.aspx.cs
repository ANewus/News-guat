using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace News
{
    public partial class test : System.Web.UI.Page
    {
        public string GetVariableStr;//注意变量的修饰符
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetVariableStr = "hello world from variable";
            }
        }
        protected string GetFunctionStr()//注意返回值的修饰符
        {
            return "hello world from Function";
        }
    }
}