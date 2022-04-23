using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BO;
using BLL;
using FactoryBO;
using FactoryBLL;
using Interfaces;



namespace Erecruitment
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        FactoryVacancyBLL fbll = new FactoryVacancyBLL();
        IVacancyBLL ibll;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayVacancyDetails();
            }

        }
        protected void DisplayVacancyDetails()
        {
            DataSet ds;
            ibll = new VacancyBLL();
            ds = ibll.ViewVacancyDetails();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            Label lblid = row.FindControl("lblVacid") as Label;
            TextBox txtn = row.FindControl("txtNop") as TextBox;
            TextBox txts = row.FindControl("txtSkills") as TextBox;
            TextBox txtE = row.FindControl("txtExp") as TextBox;
            TextBox txtD = row.FindControl("txtDate") as TextBox;
            Label lblS = row.FindControl("lblStatus") as Label;
            //Label lblrid = row.FindControl("lblEdit_RID") as Label;
            IVacancyBO obj = new VacancyBO();
            obj.VacancyId = int.Parse(lblid.Text);
            obj.NoOfPositions = int.Parse(txtn.Text);
            obj.Skills = txts.Text;
            obj.Experience = int.Parse(txtE.Text);
            obj.RequiredByDate = Convert.ToDateTime(txtD.Text);
            obj.Status = lblS.Text;
            // obj.RecruitmentRequestId = int.Parse(lblrid.Text);
            IVacancyBLL obj2 = new VacancyBLL();
            bool d = obj2.update(obj);
            if (d == true)
            {
                GridView1.EditIndex = -1;
                DisplayVacancyDetails();
            }
            else
            {
                Response.Write("<script type = 'Text/javascript'>");
                Response.Write("alert('error')");
                Response.Write("</script>");
            }
        }

        

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            Label lblid = row.FindControl("lblVacid") as Label;
            TextBox txtn = row.FindControl("txtNop") as TextBox;
            TextBox txts = row.FindControl("txtSkills") as TextBox;
            TextBox txtE = row.FindControl("txtExp") as TextBox;
            TextBox txtD = row.FindControl("txtDate") as TextBox;
            Label lblS = row.FindControl("lblStatus") as Label;
            //Label lblrid = row.FindControl("lblEdit_RID") as Label;
            IVacancyBO obj = new VacancyBO();
            obj.VacancyId = int.Parse(lblid.Text);
            obj.NoOfPositions = int.Parse(txtn.Text);
            obj.Skills = txts.Text;
            obj.Experience = int.Parse(txtE.Text);
            obj.RequiredByDate = Convert.ToDateTime(txtD.Text);
            obj.Status = lblS.Text;
            // obj.RecruitmentRequestId = int.Parse(lblrid.Text);
            IVacancyBLL obj2 = new VacancyBLL();
            bool d = obj2.update(obj);
            if (d == true)
            {
                GridView1.EditIndex = -1;
                DisplayVacancyDetails();
            }
            else
            {
                Response.Write("<script type = 'Text/javascript'>");
                Response.Write("alert('error')");
                Response.Write("</script>");
            }
        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            DisplayVacancyDetails();
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbid = row.FindControl("lblVacid") as Label;
            int i = Convert.ToInt32(lbid.Text);
            ibll = fbll.GetVacancyBllObj();
            bool b = ibll.DeleteVacancyById(i);
            GridView1.EditIndex = -1;
            DisplayVacancyDetails();
        }

        protected void GridView1_RowCancelingEdit1(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            DisplayVacancyDetails();
        }
    }
}