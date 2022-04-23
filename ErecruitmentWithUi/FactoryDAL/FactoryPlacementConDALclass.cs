using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using Interfaces;

namespace FactoryDAL
{
    public class FactoryPlacementConDALclass
    {
        public InterfacePlacementConsultantDAL GetPlaceDalObj()
        {
            InterfacePlacementConsultantDAL idal = new PlacementDAL();

            return idal;
        }

    }
}
