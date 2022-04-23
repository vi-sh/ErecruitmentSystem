using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Interfaces
{
    public interface IRecruitmentBO
    {
        int RecruitmentRequestId { get; set; }
        DateTime RequestedDate { get; set; }
        //int PlacementConsultantId { get; set; }
    }
}
