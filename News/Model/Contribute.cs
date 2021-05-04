using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Contribute
    {
        public Contribute() { }
        private string _id;
        public string id
        {
            set { _id = value; }
            get { return _id; }
        }
        private string _username;
        public string username
        {
            set { _username = value; }
            get { return _username; }
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

        private string _sql;
        public string sql
        {
            set { _sql = value; }
            get { return _sql; }
        }
    }
}
