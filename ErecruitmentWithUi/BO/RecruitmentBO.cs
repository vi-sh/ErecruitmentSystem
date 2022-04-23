using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;

namespace BO
{
    public class RecruitmentBO:IRecruitmentBO
    {
        int recruitRequestId;
        DateTime reqDate;
        //int placeConsId;

        public int RecruitmentRequestId
        {
            get
            {
                return recruitRequestId;
            }
            set
            {
                recruitRequestId = value;
            }
        }

        public DateTime RequestedDate
        {
            get
            {
                return reqDate;
            }
            set
            {
                reqDate = value;
            }
        }

        //public int PlacementConsultantId
        //{
        //    get
        //    {
        //        return placeConsId;
        //    }
        //    set
        //    {
        //        placeConsId = value;
        //    }
        //}
    }
}
