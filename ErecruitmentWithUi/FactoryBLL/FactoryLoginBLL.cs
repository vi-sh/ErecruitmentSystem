using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using BLL;

namespace FactoryBLL
{
    public class FactoryLoginBLL
    {
        public ILoginBLL GetLoginBLLobj()
        {
            ILoginBLL ilbll = new LoginBLL();
            return ilbll;
        }
    }
}
