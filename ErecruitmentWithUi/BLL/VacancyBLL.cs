using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using FactoryBO;
using DAL;
using FactoryDAL;
using Interfaces;
using System.Data;

namespace BLL
{
    public class VacancyBLL : IVacancyBLL
    {
        FactoryVacancyDAL fdal = new FactoryVacancyDAL();
        IVacancyDAL idal;
        public int Add(IVacancyBO b)
        {
            idal = fdal.GetVacancyDalObj();
            int res = idal.Add(b);
            return res;

        }

        public int AddVacancyDetails(IVacancyBO vb)
        {

            idal = fdal.GetVacancyDalObj();
            int res = idal.AddVacancyDetails(vb);
            return res;

        }


        public System.Data.DataSet ViewVacancyDetails()
        {
            fdal = new FactoryVacancyDAL();
            idal = fdal.GetVacancyDalObj();
            DataSet ds;
            ds = idal.ViewVacancyDetails();
            return ds;
        }
        public bool update(IVacancyBO obj)
        {
            idal = fdal.GetVacancyDalObj();
            //  IVacancyDAL obj1 = new VacancyDAL();
            bool b = idal.update(obj);
            return b;
        }


        public DataSet ApproveVacancy(IVacancyBO obj)
        {
            idal = fdal.GetVacancyDalObj();
            DataSet ds = idal.ApproveVacancy(obj);
            return ds;
           
        }


        public bool RejectVacancy(int a)
        {
            idal = fdal.GetVacancyDalObj();
            bool b = idal.RejectVacancy(a);
            return b;
        }
        public bool DeleteVacancyById(int vid)
        {
            idal = fdal.GetVacancyDalObj();
            return idal.DeleteVacancyById(vid);
        }


        
    }
}
