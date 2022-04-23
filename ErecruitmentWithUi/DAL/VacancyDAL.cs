using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BO;
using Interfaces;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class VacancyDAL:IVacancyDAL
    {
        SqlConnection con = new SqlConnection("server=172.25.192.72;database=db01hms92;user id=pj01hms92;password=tcshyd");
       // SqlConnection con = new SqlConnection("server=LENOVO\\SQLEXPRESS;database=myfirstdatabase;integrated security=SSPI");
        public int Add(IVacancyBO b)
        {
            SqlCommand cmd = new SqlCommand("usp_createVacancy_t4_m1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter("@vrid", SqlDbType.Int);
            p.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(p);
            cmd.Parameters.AddWithValue("@eid", b.EmployeeId);
            cmd.Parameters.AddWithValue("@noOfv", b.NoOfVacancies);
            if (con.State != ConnectionState.Open)
                con.Open();
           cmd.ExecuteNonQuery();
           con.Close();
                return (int)p.Value;
          

        }

        public int AddVacancyDetails(IVacancyBO vb)
        {
            SqlCommand cmd = new SqlCommand("usp_addvacancy_details_t4_m1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter p = new SqlParameter("@VacancyID", SqlDbType.Int);
            p.Direction = ParameterDirection.Output;
            cmd.Parameters.Add(p);
            cmd.Parameters.AddWithValue("@NoOfPositions", vb.NoOfPositions);
            cmd.Parameters.AddWithValue("@Skills", vb.Skills);
            cmd.Parameters.AddWithValue("@Experience", vb.Experience);
            cmd.Parameters.AddWithValue("@Location", vb.Location);
            cmd.Parameters.AddWithValue("@BusinessDomain", vb.Bdomain);
            cmd.Parameters.AddWithValue("@RequiredByDate", vb.RequiredByDate);
            cmd.Parameters.AddWithValue("@STATUSS", vb.Status);
            cmd.Parameters.AddWithValue("@VacancyRequestID", vb.VacancyRequestId);
            //cmd.Parameters.AddWithValue("@RecruitmentRequestID", vb.RecruitmentRequestId);
            cmd.Parameters.AddWithValue("@ApprovalStatus", vb.ApprovalStatus);
        
            if (con.State != ConnectionState.Open)
                con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            return (int)p.Value;
           
        }


        public DataSet ViewVacancyDetails()
        {
            //try
          //  {
            SqlCommand cmd = new SqlCommand("select VacancyID,NoOfPositions,Skills,Experience,RequiredByDate,STATUSS,ApprovalStatus from tbl_VacancyDetails_t4_m1", con);
                cmd.CommandType = CommandType.Text;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);

                return ds;
          //  }
          //  catch
           // {
            //    return null;
           // }
        }
        public bool update(IVacancyBO obj)
        {
            //***SqlConnection con = new SqlConnection("server=172.25.192.72;uid=PJ01HMS92;password=tcshyd;database=DB01HMS92");
            // con.Open();
            // exec usp_update_vacancy_details_m1 102,4,'ggddd',3,'12-10-2015',0,'open'
            SqlCommand cmd = new SqlCommand("usp_update_vacancy_details_m1", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@VacID", obj.VacancyId);
            cmd.Parameters.AddWithValue("@NoOfp", obj.NoOfPositions);
            cmd.Parameters.AddWithValue("@Skill", obj.Skills);
            cmd.Parameters.AddWithValue("@Expe", obj.Experience);
            cmd.Parameters.AddWithValue("@ReqBDate", obj.RequiredByDate);
            // cmd.Parameters.AddWithValue("@RecruitId",obj.RecruitmentRequestId);
            cmd.Parameters.AddWithValue("@stat", obj.Status);

            if (con.State != ConnectionState.Open)
                con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res > 0)
                return true;
            else
                return false;
            

        }



        public DataSet ApproveVacancy(IVacancyBO obj)
        {
           //*** SqlConnection con = new SqlConnection("server=172.25.192.72;user id=pj01hms92;pwd=tcshyd;database=db01hms92");
            con.Open();
            string approve = "Approved";
            SqlCommand cmd = new SqlCommand("update tbl_VacancyDetails_t4_m1 set ApprovalStatus='" + approve + "' where VacancyID=" + obj.VacancyId, con);
            cmd.ExecuteNonQuery();
 
            con.Close();
            return ViewVacancyDetails();
            
        }


        public bool RejectVacancy(int a)
        {
            //**SqlConnection con = new SqlConnection("server=172.25.192.72;uid=PJ01HMS92;password=tcshyd;database=DB01HMS92");
            con.Open();
            string reject = "Rejected";
            SqlCommand cmd = new SqlCommand("update tbl_VacancyDetails_t4_m1 set ApprovalStatus='" + reject + "' where VacancyID=" + a, con);
            cmd.CommandType = CommandType.Text;
           
            int r = cmd.ExecuteNonQuery();
            con.Close();
            if (r > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
            
            
        }
        public bool DeleteVacancyById(int vid)
        {
            SqlCommand cmd = new SqlCommand("delete from tbl_VacancyDetails_t4_m1 where VacancyID=" + vid, con);
            cmd.CommandType = CommandType.Text;
            con.Open();
           
            int r = cmd.ExecuteNonQuery();
            con.Close();
            if (r > 0)
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        
    }
}
