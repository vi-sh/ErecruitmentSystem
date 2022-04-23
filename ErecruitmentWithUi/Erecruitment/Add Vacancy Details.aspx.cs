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
    public partial class Add_Vacancy_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            FactoryVacancyBLL fbll = new FactoryVacancyBLL();
            IVacancyBLL bll = fbll.GetVacancyBllObj();
            FactoryVacancyBO fbo = new FactoryVacancyBO();
            IVacancyBO bo;
            bo = fbo.GetVacancyBoObj();
            bo.NoOfPositions = int.Parse(txtNoOfPos.Text);
            bo.Skills = txtSkills.Text;
            bo.Experience = int.Parse(txtExp.Text);
            bo.Location = txtLoc.Text;
            bo.Bdomain = txtDom.Text;
            bo.RequiredByDate = Convert.ToDateTime(txtRdate.Text);
            bo.Status = "Open";
            bo.VacancyRequestId = Convert.ToInt32(ddlVid.SelectedItem.Value);
            // bo.RecruitmentRequestId = 0;
            bo.ApprovalStatus = "Pending";
            int vid = bll.AddVacancyDetails(bo);
            bo.VacancyId = vid;
            lblVaid.Text = vid.ToString();
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            ddlVid.SelectedIndex = 0;
            txtNoOfPos.Text = txtSkills.Text = txtExp.Text = txtLoc.Text = txtDom.Text = txtRdate.Text = "";
        }

        
    }
}