using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
  public  class User
    {
        public User() { }
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
        private string _password;
        public string password
        {
            set { _password = value; }
            get { return _password; }
        }
        private string _email;
        public string email
        {
            set { _email = value; }
            get { return _email; }
        }
        private string _realname;
        public string realname
        {
            set { _realname = value; }
            get { return _realname; }
        }
        private string _sql;
        public string sql
        {
            set { _sql = value; }
            get { return _sql; }
        }

    }
}
