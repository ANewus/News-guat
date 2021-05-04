using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
  public  class UserBLL
    {
        DAL.UserDAL db = new DAL.UserDAL();
        public bool Register(Model.User user)
        {
            return db.Register(user);
        }
        public bool Login(Model.User user)
        {
            return db.Login(user);
        }
        public bool DelUser(Model.User user)
        {
            return db.DelUser(user);
        }
        public bool QueryUser(Model.User user)
        {
            return db.QueryUser(user);
        }
        public bool UpdateUser(Model.User user)
        {
            return db.UpdateUser(user);
        }
        public bool Query(Model.User user)
        {
            return db.Query(user);
        }
        public bool Updatepwd(Model.User user)
        {
            return db.Updatepwd(user);
        }
        public bool Updateinfo(Model.User user)
        {
            return db.Updateinfo(user);
        }

    }
}
