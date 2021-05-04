using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
   public class CategoryBLL
    {
        DAL.CategoryDAL db = new DAL.CategoryDAL();
        public bool AddCategory(Model.Category category)
        {
            return db.AddCategory(category);
        }
        public bool DelCategory(Model.Category category)
        {
            return db.DelCategory(category);
        }
    }
}
