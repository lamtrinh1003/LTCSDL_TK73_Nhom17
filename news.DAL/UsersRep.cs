using System;
using System.Collections.Generic;
using System.Text;
using news.Common.DAL;
using System.Linq;
namespace news.DAL
{
    using news.DAL.Models;
    public class UsersRep : GenericRep<NewsContext, Users>
    {
        public override Users Read(string id)
        {
            var res = new Users();
            try
            {
                res = All.FirstOrDefault(p => string.Compare(p.Iduser, id) == 0);
            }
            catch (Exception ex)
            {
                res.SetError(ex.StackTrace);
            }
            return res;
        }
        public string Remove(string id)
        {
            var m = base.All.First(i => string.Compare(i.Iduser, id) == 0);
            Context.Users.Remove(m);
            Context.SaveChanges();
            m = base.Delete(m); //TODO
            return m.Iduser;
        }
    }
}