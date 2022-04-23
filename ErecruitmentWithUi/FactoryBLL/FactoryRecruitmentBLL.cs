using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using BLL;


namespace FactoryBLL
{
    public class FactoryRecruitmentBLL
    {
        public IRecruitmentBLL GetRecruitBllObj()
        {
            IRecruitmentBLL irbll = new RecruitmentBLL();
            return irbll;
        }
    }
}
