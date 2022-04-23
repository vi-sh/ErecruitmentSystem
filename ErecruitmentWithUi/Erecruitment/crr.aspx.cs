using FactoryBLL;
using FactoryBO;
using Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Erecruitment
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        FactoryRecruitmentBLL frbll = new FactoryRecruitmentBLL();
        IRecruitmentBLL irbll;
        FactoryRecruitmentBO frbo = new FactoryRecruitmentBO();
        IRecruitmentBO irbo;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayRecruitmentRequest();
            }

        }

        protected void DisplayRecruitmentRequest()
        {
            DataSet ds;
            irbll = frbll.GetRecruitBllObj();
            ds = irbll.ViewRecruitmentRequest();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            int placeCid = Convert.ToInt32(ddlPlaceId.SelectedItem.Text);

            SqlConnection con = new SqlConnection("server=172.25.192.72;database=db01hms92;user id=pj01hms92;password=tcshyd");
            SqlCommand c = new SqlCommand("usp_CreateRecruitment_Request", con);
            c.CommandType = CommandType.StoredProcedure;
            SqlParameter pa = new SqlParameter("@rrid", SqlDbType.Int);
            pa.Direction = ParameterDirection.Output;
            c.Parameters.Add(pa);
            c.Parameters.AddWithValue("@pcid", placeCid);

            if (con.State != ConnectionState.Open)
                con.Open();
            int res = c.ExecuteNonQuery();
            con.Close();

            int rrid = Convert.ToInt32(pa.Value);
            Label10.Text = Convert.ToString(rrid);



            int vid=0;

            


            foreach (GridViewRow grv in GridView1.Rows)
            {
                CheckBox chk = grv.FindControl("chkSelect") as CheckBox;
                if (chk.Checked)
                {
                   
                    Label lvid = grv.FindControl("lblVid") as Label;
                   
                    vid = Convert.ToInt32(lvid.Text);
                    c = new SqlCommand("update tbl_VacancyDetails_t4_m1 set RecruitmentRequestID=" + rrid + " where VacancyID=" + vid, con);
                    con.Open();
                    c.ExecuteNonQuery();
                    con.Close();

                  
                }
            }
        }












            // GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

        //    foreach (GridViewRow grv in GridView1.Rows)
        //    {
        //        CheckBox chk = grv.FindControl("chkSelect") as CheckBox;
        //        if (chk.Checked)
        //        {
        //            int placeCid = Convert.ToInt32(ddlPlaceId.SelectedItem.Text);
        //            Label lvid = grv.FindControl("lblVid") as Label;
        //            irbo = frbo.GetRecruitBoObj();
        //            irbll = frbll.GetRecruitBllObj();
        //            int vid = Convert.ToInt32(lvid.Text);
        //            bool b = irbll.CreateRecruitmentRequest(placeCid, vid);
        //            if (b == true)
        //            {
        //                Response.Write("<script type = text/javascript>");
        //                Response.Write("alert('success')");
        //                Response.Write("</script>");
        //            }
        //            else
        //            {
        //                Response.Write("<script type = text/javascript>");
        //                Response.Write("alert('failure')");
        //                Response.Write("</script>");

        //            }

        //        }
        //    }

        //    DisplayRecruitmentRequest();
        //}

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    SqlConnection conn = new SqlConnection("Data Source=172.25.192.72; uid=PJ01HMS92; Password=tcshyd;Database=DB01HMS92");
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand();
        //    GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //    Label lbl1 = row.FindControl("Label1") as Label;

        //    TextBox txtnp = row.FindControl("TextBox1") as TextBox;
        //    TextBox txtskill = row.FindControl("TextBox2") as TextBox;
        //    TextBox txtexp = row.FindControl("TextBox3") as TextBox;
        //    TextBox txtlocation = row.FindControl("TextBox4") as TextBox;
        //    TextBox txtdomain = row.FindControl("TextBox5") as TextBox;
        //    TextBox txtreqdate = row.FindControl("TextBox6") as TextBox;

        //    int reoff = cmd.ExecuteNonQuery();

        //    GridView1.EditIndex = -1;
        //    GridView1.DataBind();


        //    conn.Close();
        //    FillData();


        //}

        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{

        //}

        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    FillData();
        //}

        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    FillData();
        //}
    }
}