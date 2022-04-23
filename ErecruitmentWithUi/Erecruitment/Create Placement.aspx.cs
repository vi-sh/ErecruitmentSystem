using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using BLL;
using FactoryBO;
using FactoryBLL;
using Interfaces;

namespace Erecruitment
{
    public partial class Create_Placement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            FactoryPlacementConBLLclass fpbll = new FactoryPlacementConBLLclass();
            InterfacePlacementConsultantBLL bllobj = fpbll.GetPlaceBllObj();
            FactoryPlacementConBOclass fpbo = new FactoryPlacementConBOclass();
            InterfacePlacementConsultantBO bo;
            bo = fpbo.GetPlaceBoObj();
            try
            {

                bo.PlacementConsultantName = txtName.Text;
                bo.Password = txtPwd.Text;
                bo.Location = ddlLoc.SelectedValue;
                int id = bllobj.AddConsultant(bo);
                //lblStatusadd.T = id.ToString();
                bo.PlacementConsultantID = id;
                 Response.Write("<script type=text/javascript>");
               Response.Write("alert('Placement Consultant Added Successfully')");
               Response.Write("</script>");
           }
            catch (Exception )
            {
               Response.Write("<script type=text/javascript>");
               Response.Write("alert('Error')");
               Response.Write("</script>");
               //lblStatusadd.Text = "Error : " + ex.Message;
           }
        }

        protected void btnCancel0_Click(object sender, EventArgs e)
        {
            txtCpwd.Text = txtName.Text = txtPwd.Text = "";
            ddlLoc.SelectedIndex = 0;
        }
    }
}