using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;

namespace BO
{
    public class LoginBO:ILoginBO
    {
        int usrid;
        string pwd;
        string designation;

        public int EmployeeID
        {
            get
            {
                return usrid;
            }
            set
            {
                usrid = value;
            }
        }

        public string Password
        {
            get
            {
                return pwd;
            }
            set
            {
                pwd = value;
                
            }
        }

        public string Designation
        {
            get
            {
                return designation;
            }
            set
            {
                designation = value;
            }
        }
    }
}
