using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Interfaces;
using BO;
using FactoryBLL;
using BLL;
using FactoryBO;
using System.Data;

namespace Erecruitment
{
    public partial class Approve_Vacancy : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayVacancyDetails();
        }
       
        FactoryVacancyBLL fvbll = new FactoryVacancyBLL();
        FactoryVacancyBO fvbo = new FactoryVacancyBO();
        IVacancyBO ivbo;
        IVacancyBLL ivbll;

        protected void DisplayVacancyDetails()
        {
            DataSet ds;
            ivbll = fvbll.GetVacancyBllObj();
            ds = ivbll.ViewVacancyDetails();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            Label lblvid = row.FindControl("lblVacId") as Label;
            Label lblstatus = row.FindControl("lblStatus") as Label;
            Label lblAstatus = row.FindControl("lblAstatus") as Label;
            ivbll = fvbll.GetVacancyBllObj();
            ivbo = fvbo.GetVacancyBoObj();
            ivbo.Status = lblstatus.Text;
            ivbo.ApprovalStatus = lblAstatus.Text;
            ivbo.VacancyId = int.Parse(lblvid.Text);
            ivbll.ApproveVacancy(ivbo);
            //SqlConnection con = new SqlConnection("server=172.25.192.72;user id=pj01hms92;pwd=tcshyd;database=db01hms92");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("update Add_Vacancy_Details2_Team10 set status='Accept' where Vacancy_ID=" + lblid.Text, con);
            //cmd.ExecuteNonQuery();
            DisplayVacancyDetails();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            Label lblvid = (Label)row.FindControl("lblVacId");
            Label lblstatus = (Label)row.FindControl("lblStatus");
            Label lblAstatus = row.FindControl("lblAstatus") as Label;
            int i = Convert.ToInt32(lblvid.Text);
            ivbll = fvbll.GetVacancyBllObj();
            ivbll.RejectVacancy(i);
            //SqlConnection con = new SqlConnection("server=172.25.192.72;user id=pj01hms92;pwd=tcshyd;database=db01hms92");
            //con.Open();
            //SqlCommand cmd = new SqlCommand("update Add_Vacancy_Details2_Team10 set status='Reject' where Vacancy_ID=" + lblid.Text, con);
            //cmd.ExecuteNonQuery();
           // GridView1.EditIndex = -1;
           DisplayVacancyDetails();

        }

       

        
    }
}