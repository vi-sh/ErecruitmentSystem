using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using FactoryBO;
using FactoryDAL;
using DAL;
using Interfaces;
using System.Data;

namespace BLL
{
    public class PlacementBLL : InterfacePlacementConsultantBLL
    {
        FactoryPlacementConDALclass fpdal;
        //PlacementDAL pdal;
        InterfacePlacementConsultantDAL ipdal;
        public int AddConsultant(InterfacePlacementConsultantBO ipbo)
        {

            fpdal = new FactoryPlacementConDALclass();
            ipdal = fpdal.GetPlaceDalObj();

            int obj = 0;
            obj = ipdal.AddConsultant(ipbo);
            return obj;
        }
        public void del(int i)
        {


            InterfacePlacementConsultantDAL obj1 = new PlacementDAL();
            obj1.del(i);

        } 
        public DataSet update(InterfacePlacementConsultantBO obj)
        {
            InterfacePlacementConsultantDAL obj1 = new PlacementDAL();
            DataSet dr = obj1.update(obj);
            return dr;
        }


        public System.Data.DataSet viewPlacement()
        {
            fpdal = new FactoryPlacementConDALclass();
            ipdal = fpdal.GetPlaceDalObj();
            DataSet ds;
            ds = ipdal.viewPlacement();
            return ds;
            
        }


        public DataSet SearchPlacement(string name)
        {
            fpdal = new FactoryPlacementConDALclass();
            ipdal = fpdal.GetPlaceDalObj();
            DataSet ds;
            ds = ipdal.SearchPlacement(name);
            return ds;
        }


    }
}
