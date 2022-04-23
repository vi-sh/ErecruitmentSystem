using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Interfaces
{
    public interface InterfacePlacementConsultantBO
    {
        int PlacementConsultantID { get; set; }
        string PlacementConsultantName { get; set; }
        string Password { get; set; }
        string Location { get; set; }
    }
}

