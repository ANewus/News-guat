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


namespace News
{
    public partial class main : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            DataListBind();


            if (Session["account"] == null)
            {
                this.MultiView1.ActiveViewIndex = 0;

            }
            else
            {
                this.MultiView1.ActiveViewIndex = 1;
                
                this.HyperLink1.Text = Session["account"].ToString();


            }


        }
        public string CutStr(string s)
        {
            if (s.Length > 30)
            {
                s = s.Substring(0, 30) + "...";
            }
            return s;
        }
        public string CutStr2(string s)
        {
            if (s.Length > 18)
            {
                s = s.Substring(0, 18) + "...";
            }
            return s;
        }
        public string CutStr3(string s)
        {
            if (s.Length > 15)
            {
                s = s.Substring(0, 15) + "...";
            }
            return s;
        }


        private void DataListBind()
        {
            int current_page = Convert.ToInt32(lblCurrent.Text);
            SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["news"].ConnectionString);
            SqlDataAdapter oda = new SqlDataAdapter("select * from news order by createTime DESC", con);
            DataSet ds = new DataSet();
            oda.Fill(ds);

            PagedDataSource ps = new PagedDataSource();
            ps.DataSource = ds.Tables[0].DefaultView;
            ps.AllowPaging = true;
            ps.PageSize = 9;
            lblTotal.Text = ps.PageCount.ToString();
            ps.CurrentPageIndex = current_page - 1;

            lbntUp.Enabled = true;
            lbtnDown.Enabled = true;
      
            if (current_page == 1)
            {
            
                lbntUp.Enabled = false;
            }
            if (current_page == Convert.ToInt32(lblTotal.Text))
            {

                lbtnDown.Enabled = false;
            }
            DataList1.DataSource = ps;
            DataList1.DataBind();
        }

        protected void lbtnDown_Click(object sender, EventArgs e)
        {
            lblCurrent.Text = (Convert.ToInt32(lblCurrent.Text) + 1).ToString();
            DataListBind();
        }
        protected void lbntUp_Click(object sender, EventArgs e)
        {
            lblCurrent.Text = (Convert.ToInt32(lblCurrent.Text) - 1).ToString();
            DataListBind();
        }
        protected void click1(object sender, EventArgs e)
        {
            Session["search"] =  Request["ssearch"].ToString();
            // Response.Write("<script>alert('" + search + "')</script>");
            Response.Redirect("WEB/home/news/search.aspx?search=" + Session["search"].ToString());
        }
 
    }
 }