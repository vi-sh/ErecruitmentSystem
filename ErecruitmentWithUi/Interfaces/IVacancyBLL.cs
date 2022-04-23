using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;
using System.Data;

namespace Interfaces
{
    public interface IVacancyBLL
    {
        int Add(IVacancyBO b);
        int AddVacancyDetails(IVacancyBO vb);
        DataSet ViewVacancyDetails();
        bool update(IVacancyBO obj);
        DataSet ApproveVacancy(IVacancyBO obj);
        bool RejectVacancy(int a);
        bool DeleteVacancyById(int vid);
    }
}
