using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using BO;
using FactoryBO;
using FactoryDAL;
using DAL;
using System.Data;

namespace BLL
{
    public class LoginBLL:ILoginBLL
    {
        public ILoginBO Login(int eid)
        {
            FactoryLoginDAL fldal = new FactoryLoginDAL();
            ILoginDAL ildal = fldal.GetLoginDALobj();
             return ildal.Login(eid);
           
           
          
        }
    }
}
