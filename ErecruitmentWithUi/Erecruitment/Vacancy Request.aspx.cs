using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Interfaces;
using BO;
using FactoryBLL;
using FactoryBO;

namespace Erecruitment
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        static IVacancyBO bo;
        protected void Button1_Click(object sender, EventArgs e)
        {
            FactoryVacancyBLL fvbll = new FactoryVacancyBLL();
            IVacancyBLL bll = fvbll.GetVacancyBllObj();
            FactoryVacancyBO fvbo = new FactoryVacancyBO();
            bo = fvbo.GetVacancyBoObj();
            bo.EmployeeId  = int.Parse(txtEid.Text);
            bo.NoOfVacancies = int.Parse(txtNofVac.Text);
            int r = bll.Add(bo);
            if (r > 0)
                lblVacRid.Text = "success:" + r.ToString();
            else
                lblVacRid.Text = "unsuccess";
            Response.Redirect("Add Vacancy Details.aspx");

        }
    }
}