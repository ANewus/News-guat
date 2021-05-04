using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;

namespace DAL
{
   public class DBHelper
    {
        public DBHelper()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //
        }


        /// <summary>
        /// 获得数据库连接字符串
        /// </summary>
        /// <returns></returns>
        public static string GetConnStr()
        {
            return ConfigurationManager.ConnectionStrings["news"].ConnectionString;
        }



        /// <summary>
        /// 由sql变量（select语句）得到DataSet类型查询记录集合
        /// </summary>
        /// <param name="sql">select语句，字符串类型</param>
        /// <returns></returns>
        public static DataSet GetDataSet(string sql)
        {
            SqlConnection conn = new SqlConnection(GetConnStr());
            conn.Open();
            SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            conn.Close();
            return ds;
        }




        /// <summary>
        /// 执行sql语句，主要是insert、update、delete语句
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static Boolean ExecSql(string sql)
        {
            SqlConnection conn = new SqlConnection(GetConnStr());
            conn.Open();
            SqlCommand cmd = new SqlCommand(sql, conn);
            try
            {
                cmd.ExecuteNonQuery();
                conn.Close();
            }
            catch (Exception ex)
            {
                conn.Close();
                return false;
            }
            return true;
        }



        #region 弹出信息提示
        public static void ShowMessage(string v, Page page, string msg, string key)
        {
            string strScript = "<script language=javascript>alert('" + msg + "');</script>";
            ClientScriptManager cs = page.ClientScript;
            Type type = page.GetType();
            if (!cs.IsStartupScriptRegistered(key))
            {
                cs.RegisterStartupScript(type, key, strScript);
            }

        }
        public static void ShowMessage(Page page, string msg, string key, string Redirect)
        {
            string strScript = "<script language=javascript>alert('" + msg + "');window.location.href='" + Redirect + "';</script>";
            ClientScriptManager cs = page.ClientScript;
            Type type = page.GetType();
            if (!cs.IsStartupScriptRegistered(key))
            {
                cs.RegisterStartupScript(type, key, strScript);
            }

        }
        #endregion


        /// <summary>
        /// 说明：GetDataSet数据集，返回数据源的数据集
        ///	返回值：数据集DataSet
        ///	参数：sQueryString SQL字符串，TableName 数据表名称

        /// </summary>
        public static DataSet GetDataSet(string sQueryString, string TableName)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ZA"]);
            con.Open();
            SqlDataAdapter dbAdapter = new SqlDataAdapter(sQueryString, con);
            DataSet dataset = new DataSet();
            dbAdapter.Fill(dataset, TableName);
            con.Close();
            return dataset;
        }
    }
}
