using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using BO;

namespace FactoryBO
{
   public class FactoryVacancyBO
    {
       public IVacancyBO GetVacancyBoObj()
       {
           IVacancyBO obj = new VacancyBO();
           return obj;
       }
    }
}
