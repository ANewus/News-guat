using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
  public  class ContributeBLL
    {
        DAL.ContributeDAL db = new DAL.ContributeDAL();
        public bool AddContribute(Model.Contribute contribute)
        {
            return db.AddContribute(contribute);
        }
        public bool UpdateContribute(Model.Contribute contribute)
        {
            return db.UpdateContribute(contribute);
        }
        public bool QueryContribute(Model.Contribute contribute)
        {
            return db.QueryContribute(contribute);
        }
        public bool DelContribute(Model.Contribute contribute)
        {
            return db.DelContribute(contribute);
        }
        public bool SearchTitle(Model.Contribute contribute)
        {
            return db.SearchTitle(contribute);
        }
        public bool SearchCategory(Model.Contribute contribute)
        {
            return db.SearchCategory(contribute);
        }
        public bool SearchUsername(Model.Contribute contribute)
        {
            return db.SearchUsername(contribute);
        }
    }
}
