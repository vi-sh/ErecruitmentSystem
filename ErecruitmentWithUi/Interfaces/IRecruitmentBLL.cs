using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Interfaces
{
    public interface IRecruitmentBLL
    {
        DataSet ViewRecruitmentRequest();
        bool CreateRecruitmentRequest(int p,int v);
        DataSet ViewRecruitmentRequestById(int a);
        bool UntagRecruitmentRequest(int r, int v);
        DataSet ViewRecruitmentRequest2(int a);
        bool DeleteRecruitmentRequest(int a);
        DataSet ViewRecruitmentRequestAll();
        DataSet ViewRecruitmentRequestByRid(int i);
        DataSet ViewRecruitmentRequestByDate(DateTime dt);
        DataSet ViewRecruitmentRequestByIdAndDate(int i,DateTime dt);
        int CreateRrequestGenerateId(int a);
        bool CreateRrequestAcceptRrid(int r, int v);
        

    }
}
