using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using DAL;

namespace FactoryDAL
{
    public class FactoryRecruitmentDAL
    {
        public IRecruitmentDAL GetRecruitDalObj()
        {
            IRecruitmentDAL irdal = new RecruitmentDAL();
            return irdal;
        }
    }
}
