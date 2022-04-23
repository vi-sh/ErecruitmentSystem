using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Interfaces
{
   public interface IVacancyDAL
    {
        int Add(IVacancyBO b);
        int AddVacancyDetails(IVacancyBO vb);
        DataSet ViewVacancyDetails();
        bool update(IVacancyBO obj);
        DataSet ApproveVacancy(IVacancyBO obj4);
        bool RejectVacancy(int a);
        bool DeleteVacancyById(int vid);

    }
}
