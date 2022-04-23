using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using DAL;

namespace FactoryDAL
{
   public class FactoryVacancyDAL
    {
       public IVacancyDAL GetVacancyDalObj()
       {
           IVacancyDAL obj = new VacancyDAL();
           return obj;
       }
    }
}
