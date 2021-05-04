using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Report
    {
        public Report() { }
        private string _id;
        public string id
        {
            set { _id = value; }
            get { return _id; }
        }
        private string _newsid;
        public string newsid
        {
            set { _newsid = value; }
            get { return _newsid; }
        }
        private string _title;
        public string title
        {
            set { _title = value; }
            get { return _title; }
        }
        private string _contents;
        public string contents
        {
            set { _contents = value; }
            get { return _contents; }
        }
        private string _reportTime;
        public string reportTime
        {
            set { _reportTime = value; }
            get { return _reportTime; }
        }
        private string _sql;
        public string sql
        {
            set { _sql = value; }
            get { return _sql; }
        }
    }
}
