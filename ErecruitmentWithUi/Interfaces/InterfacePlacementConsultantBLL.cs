using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Interfaces
{
   public interface InterfacePlacementConsultantBLL
    {
        int AddConsultant(InterfacePlacementConsultantBO ipbo);
        DataSet viewPlacement();
        DataSet SearchPlacement(string name);
       // bool updateData(int id, string name);
        DataSet update(InterfacePlacementConsultantBO obj);
        void del(int i);

    }
}
