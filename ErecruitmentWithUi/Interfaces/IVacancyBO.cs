using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Interfaces
{
    public interface IVacancyBO
    {
        int EmployeeId { get; set; }
        int VacancyId { get; set; }
        int NoOfPositions { get; set; }
        string Skills { get; set; }
        int Experience { get; set; }
        string Location { get; set; }
        string Bdomain { get; set; }
        DateTime RequiredByDate { get; set; }
        int NoOfVacancies { get; set; }
        string ApprovalStatus { get; set; }
        int VacancyRequestId { get; set; }
        int RecruitmentRequestId { get; set; }
        string Status { get; set; }
    }
}
