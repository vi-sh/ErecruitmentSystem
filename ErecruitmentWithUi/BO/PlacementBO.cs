using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Interfaces;

namespace BO
{
    public class PlacementBO : InterfacePlacementConsultantBO
    {
        int placementConId;
        string placementConName;
        string password;
        string location;
        public int PlacementConsultantID
        {
            get
            {
                return placementConId;
            }
            set
            {
                placementConId = value;
            }
        }

        public string PlacementConsultantName
        {
            get
            {
                return placementConName;
            }
            set
            {
                placementConName = value;

            }
        }

        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
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
    }
}
