using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
   public class Category
    {
        public Category() { }
        private string _id;
        public string id
        {
            set { _id = value; }
            get { return _id; }
        }
        private string _name;
        public string name
        {
            set { _name = value; }
            get { return _name; }
        }
    }
}
