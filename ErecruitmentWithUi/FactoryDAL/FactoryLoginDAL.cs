using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using DAL;


namespace FactoryDAL
{
    public class FactoryLoginDAL
    {
        public ILoginDAL GetLoginDALobj()
        {
            ILoginDAL ildal = new LoginDAL();
            return ildal;
        }
    }
}
