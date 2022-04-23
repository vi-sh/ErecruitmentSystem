using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;

namespace BO
{
    public class VacancyBO:IVacancyBO
    {
        int employeeId;
        int vacancyId;
        int noOfPositions;
        string skills;
        int experience;
        string location;
        string bdomain;
        DateTime requiredByDate;
        int noOfVacancies;
        string approvalStatus;
        int vacancyRequestId;
        int recruitmentRequestId;
        string status;
        public int EmployeeId
        {
            get
            {
                return  employeeId;
            }
            set
            {
                employeeId = value;

            }
        }

        public int VacancyId
        {
            get
            {
                return vacancyId;
            }
            set
            {
                vacancyId = value;
            }
        }

        public int NoOfPositions
        {
            get
            {
                return noOfPositions;
            }
            set
            {
                noOfPositions = value;
            }
        }

        public string Skills
        {
            get
            {
                return skills;
            }
            set
            {
                skills = value;
            }
        }

        public int Experience
        {
            get
            {
                return experience;
            }
            set
            {
                experience = value;
            }
        }

        public string Location
        {
            get
            {
                return location;
            }
            set
            {
                location = value;
            }
        }

        public string Bdomain
        {
            get
            {
                return bdomain;
            }
            set
            {
                bdomain = value;
            }
        }

        public DateTime RequiredByDate
        {
            get
            {
                return requiredByDate;
            }
            set
            {
                requiredByDate = value;
            }
        }

        public int NoOfVacancies
        {
            get
            {
                return noOfVacancies;
            }
            set
            {
                noOfVacancies = value;
            }
        }

        public string ApprovalStatus
        {
            get
            {
                return approvalStatus;
            }
            set
            {
                approvalStatus = value;
            }
        }

        public int VacancyRequestId
        {
            get
            {
                return vacancyRequestId;
            }
            set
            {
                vacancyRequestId = value;
            }
        }

        public int RecruitmentRequestId
        {
            get
            {
                return recruitmentRequestId;
            }
            set
            {
                recruitmentRequestId = value;
            }
        }

        public string Status
        {
            get
            {
                return status;
            }
            set
            {
                status = value;
            }
        }
    }
}
