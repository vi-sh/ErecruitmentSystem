using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BLL;
using Interfaces;


namespace FactoryBLL
{
    public class FactoryPlacementConBLLclass
    {
        public InterfacePlacementConsultantBLL GetPlaceBllObj()
        {
            InterfacePlacementConsultantBLL fbll = new PlacementBLL();
            return fbll;
        }
    }
}
