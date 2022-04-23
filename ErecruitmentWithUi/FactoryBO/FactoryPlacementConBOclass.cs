using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using Interfaces;


namespace FactoryBO
{
    public class FactoryPlacementConBOclass
    {
        public InterfacePlacementConsultantBO GetPlaceBoObj()
        {
            InterfacePlacementConsultantBO obj = new PlacementBO();
            return obj;
        }
    }
}
