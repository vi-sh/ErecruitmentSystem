using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using Interfaces;

namespace FactoryBO
{
    public class FactoryRecruitmentBO
    {
        public IRecruitmentBO GetRecruitBoObj()
        {
            IRecruitmentBO irbo = new RecruitmentBO();
            return irbo;
        }
    }
}
