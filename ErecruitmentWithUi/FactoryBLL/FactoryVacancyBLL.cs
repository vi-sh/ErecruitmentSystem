using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using BLL;

namespace FactoryBLL
{
    public class FactoryVacancyBLL
    {
        public IVacancyBLL GetVacancyBllObj()
        {
            IVacancyBLL obj = new VacancyBLL();
            return obj;
        }
    }
}
