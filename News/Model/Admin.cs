using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
  public  class Admin
    {
        public Admin() { }
        private string _id;
        public string id
        {
            set { _id = value; }
            get { return _id; }
        }
        private string _adname;
        public string adname
        {
            set { _adname = value; }
            get { return _adname; }
        }
        private string _adpassword;
        public string adpassword
        {
            set { _adpassword = value; }
            get { return _adpassword; }
        }
    }
}
