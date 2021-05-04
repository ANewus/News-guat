using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
  public  class NewsBLL
    {
        DAL.NewsDAL db = new DAL.NewsDAL();
        public bool AddNews(Model.News news)
        {
            return db.AddNews(news);
        }
        public bool UpdateNews(Model.News news)
        {
            return db.UpdateNews(news);
        }
        public bool QueryNews(Model.News news)
        {
            return db.QueryNews(news);
        }
        public bool DelNews(Model.News news)
        {
            return db.DelNews(news);
        }
        public bool SearchTitle(Model.News news)
        {
            return db.SearchTitle(news);
        }
        public bool SearchCategory(Model.News news)
        {
            return db.SearchCategory(news);
        }
        public bool UpdateClick(Model.News news)
        {
            return db.UpdateClick(news);
        }
    }
}
