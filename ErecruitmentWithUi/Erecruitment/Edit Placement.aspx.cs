using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BO;
using BLL;
using FactoryBO;
using FactoryBLL;
using Interfaces;

namespace Erecruitment
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        FactoryPlacementConBLLclass fpbll = new FactoryPlacementConBLLclass();
        InterfacePlacementConsultantBLL ipbll;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }
        protected void DisplayPlacementConsultant()
        {
            DataSet ds;
            ipbll = new PlacementBLL();
            ds = ipbll.viewPlacement();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();

        }
  
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            Label lblID = row.FindControl("Label3") as Label;
            TextBox txtNo = row.FindControl("txtName") as TextBox;
            TextBox txtAdd = row.FindControl("txtLocation") as TextBox;
            Label lbl1 = row.FindControl("lblpwd") as Label;
            
            InterfacePlacementConsultantBO obj = new PlacementBO();
            obj.PlacementConsultantID = int.Parse(lblID.Text);
            obj.PlacementConsultantName =(txtNo.Text);
            obj.Location = txtAdd.Text;
            obj.Password = lbl1.Text;
            InterfacePlacementConsultantBLL obj2 = new PlacementBLL();
            obj2.update(obj);
            GridView1.EditIndex = -1;
            DisplayPlacementConsultant()
           ;

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            DisplayPlacementConsultant();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lblNo = row.FindControl("Label3") as Label;
            int i = int.Parse(lblNo.Text.ToString());

            InterfacePlacementConsultantBLL obj1 = new PlacementBLL();
            obj1.del(i);
            GridView1.EditIndex = -1;
            DisplayPlacementConsultant()
         ;

        }


        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            DisplayPlacementConsultant();

        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
            DisplayPlacementConsultant();
        
        
        }

        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            DataSet ds;
            ipbll = new PlacementBLL();
            string s = txtName.Text;
            ds = ipbll.SearchPlacement(s);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        }
    }
