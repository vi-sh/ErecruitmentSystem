using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using Interfaces;

namespace FactoryBO
{
    public class FactoryLoginBO
    {
        public ILoginBO GetLoginBoObj()
        {
            ILoginBO ilbo = new LoginBO();
            return ilbo;
        }
    }
}
