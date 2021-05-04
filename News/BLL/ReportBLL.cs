using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class ReportBLL
    {
        DAL.ReportDAL db = new DAL.ReportDAL();
        public bool AddReport(Model.Report report)
        {
            return db.AddReport(report);
        }
        public bool DelReport(Model.Report report)
        {
            return db.DelReport(report);
        }
        public bool SearchTitle(Model.Report report)
        {
            return db.SearchTitle(report);
        }
    }
}
