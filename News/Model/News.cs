using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class News
    {
        public News() { }
        private string _id;
        public string id
        {
            set { _id = value; }
            get { return _id; }
        }
        private string _category;
        public string category
        {
            set { _category = value; }
            get { return _category; }
        }
        private string _title;
        public string title
        {
            set { _title = value; }
            get { return _title; }
        }
        private string _author;
        public string author
        {
            set { _author = value; }
            get { return _author; }
        }
        private string _contents;
        public string contents
        {
            set { _contents = value; }
            get { return _contents; }
        }
        private string _createTime;
        public string createTime
        {
            set { _createTime = value; }
            get { return _createTime; }
        }
        private string _click;
        public string click
        {
            set { _click = value; }
            get { return _click; }
        }

        /*private string _conditions; //条件
        public string conditions
        {
            set { _conditions = value; }
            get { return _conditions; }
        }*/
        private string _sql;
        public string sql
        {
            set { _sql = value; }
            get { return _sql; }
        }
    }
}
