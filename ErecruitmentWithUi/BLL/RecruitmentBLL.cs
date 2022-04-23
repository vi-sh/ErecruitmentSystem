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
    public class RecruitmentBLL:IRecruitmentBLL
    {
        FactoryRecruitmentDAL frdal = new FactoryRecruitmentDAL();
        IRecruitmentDAL irdal;
        public DataSet ViewRecruitmentRequest()
        {
            irdal = frdal.GetRecruitDalObj();
            DataSet ds = irdal.ViewRecruitmentRequest();
            return ds;
        }


        public bool CreateRecruitmentRequest(int p,int v)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.CreateRecruitmentRequest(p,v);

        }


        public DataSet ViewRecruitmentRequestById(int a)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.ViewRecruitmentRequestById(a);
            
        }


        public bool UntagRecruitmentRequest(int r, int v)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.UntagRecruitmentRequest(r, v);
           
        }


        public DataSet ViewRecruitmentRequest2(int a)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.ViewRecruitmentRequest2(a);
            
        }


        public bool DeleteRecruitmentRequest(int a)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.DeleteRecruitmentRequest(a);
        }


        public DataSet ViewRecruitmentRequestAll()
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.ViewRecruitmentRequestAll();
        }


        public DataSet ViewRecruitmentRequestByRid(int i)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.ViewRecruitmentRequestByRid(i);
        }

        public DataSet ViewRecruitmentRequestByDate(DateTime dt)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.ViewRecruitmentRequestByDate(dt);
        }

        public DataSet ViewRecruitmentRequestByIdAndDate(int i, DateTime dt)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.ViewRecruitmentRequestByIdAndDate(i, dt);
        }


        public int CreateRrequestGenerateId(int a)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.CreateRrequestGenerateId(a);
        }


        public bool CreateRrequestAcceptRrid(int r, int v)
        {
            irdal = frdal.GetRecruitDalObj();
            return irdal.CreateRrequestAcceptRrid(r,v);
        }
    }
}
