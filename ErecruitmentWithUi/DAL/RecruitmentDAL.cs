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
    public class RecruitmentDAL:IRecruitmentDAL
    {
      SqlConnection con = new SqlConnection("server=172.25.192.72;database=db01hms92;user id=pj01hms92;password=tcshyd");
      // SqlConnection con = new SqlConnection("server=LENOVO\\SQLEXPRESS;database=myfirstdatabase;integrated security=SSPI");
        public DataSet ViewRecruitmentRequest()
        {
            SqlCommand cmd = new SqlCommand("select VacancyID,NoOfPositions,Skills,Experience,Location,BusinessDomain,RequiredByDate from tbl_VacancyDetails_t4_m1", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
            
        }


        public bool CreateRecruitmentRequest(int p, int v)
        {
            SqlCommand c = new SqlCommand("usp_CreateRecruitment_Request", con);
            c.CommandType = CommandType.StoredProcedure;
            SqlParameter pa = new SqlParameter("@rrid", SqlDbType.Int);
            pa.Direction = ParameterDirection.Output;
            c.Parameters.Add(pa);
            c.Parameters.AddWithValue("@pcid", p);
            c.Parameters.AddWithValue("@vid", v);
            if (con.State != ConnectionState.Open)
                con.Open();
            int res = c.ExecuteNonQuery();
            con.Close();
            if (res > 0)
                return true;
            else
                return false;
        }


        public DataSet ViewRecruitmentRequestById(int a)
        {
            SqlCommand cmd = new SqlCommand("select VacancyID,NoOfPositions,Skills,Experience,Location,BusinessDomain,RequiredByDate from tbl_VacancyDetails_t4_m1 where RecruitmentRequestID=" + a, con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }

        public bool UntagRecruitmentRequest(int r, int v)
        {
            SqlCommand cmd = new SqlCommand("usp_UntagRrequest", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@rid", r);
            cmd.Parameters.AddWithValue("@vid", v);
            if (con.State != ConnectionState.Open)
                con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res > 0)
                return true;
            else
                return false;
        }


        public DataSet ViewRecruitmentRequest2(int a)
        {

            SqlCommand cmd = new SqlCommand("select VacancyID,VacancyRequest_ID,NoOfPositions,Skills,Experience,STATUSS,Location,BusinessDomain,RequiredByDate from tbl_VacancyDetails_t4_m1 where RecruitmentRequestID=" + a, con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }




        public bool DeleteRecruitmentRequest(int a)
        {
            SqlCommand cmd = new SqlCommand("usp_Delete_Recruitment_Request", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@rid", a); 
            if (con.State != ConnectionState.Open)
                con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res > 0)
                return true;
            else
                return false;
        }


        public DataSet ViewRecruitmentRequestAll()
        {
            SqlCommand cmd = new SqlCommand("select * from tbl_RecruitmentRequest_t4_m1", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }


        public DataSet ViewRecruitmentRequestByRid(int i)
        {
           
            SqlCommand cmd = new SqlCommand("usp_VbyId", con);
            cmd.Parameters.AddWithValue("@id", i);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet ViewRecruitmentRequestByDate(DateTime dt)
        {

            DateTime d = dt.AddDays(1);
            //SqlCommand cmd = new SqlCommand("select * from tbl_RecruitmentRequest_t4_m1 where RequesteddDate>='" + dt + "' and " + "RequesteddDate<'" + d + "'", con);
            SqlCommand cmd = new SqlCommand("usp_VbyDate", con);
            cmd.Parameters.AddWithValue("@da", dt);
            cmd.Parameters.AddWithValue("@dae", d);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet ViewRecruitmentRequestByIdAndDate(int i, DateTime dt)
        {
            DateTime d = dt.AddDays(1);
            //SqlCommand cmd = new SqlCommand("select * from tbl_RecruitmentRequest_t4_m1 where RECRUITMENT_REQUESTID=" + i + " and " + "RequesteddDate>='" + dt + "' and " + "RequesteddDate<'" + d + "'", con);
            SqlCommand cmd = new SqlCommand("usp_VbyIdAndDate", con);
            cmd.Parameters.AddWithValue("@id", i);
            cmd.Parameters.AddWithValue("@da", dt);
            cmd.Parameters.AddWithValue("@dae", d);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public int CreateRrequestGenerateId(int a)
        {
            SqlCommand c = new SqlCommand("usp_CreateRecruitment_Request", con);
            c.CommandType = CommandType.StoredProcedure;
            SqlParameter pa = new SqlParameter("@rrid", SqlDbType.Int);
            pa.Direction = ParameterDirection.Output;
            c.Parameters.Add(pa);
            c.Parameters.AddWithValue("@pcid", a);
            if (con.State != ConnectionState.Open)
                con.Open();
            c.ExecuteNonQuery();
            con.Close();
            int rrid = Convert.ToInt32(pa.Value);
            return rrid;
        }


        public bool CreateRrequestAcceptRrid(int rrid, int vid)
        {
            SqlCommand cmd = new SqlCommand("update tbl_VacancyDetails_t4_m1 set RecruitmentRequestID=" + rrid + " where VacancyID=" + vid, con);
            if (con.State != ConnectionState.Open)
                con.Open();
            int res = cmd.ExecuteNonQuery();
            con.Close();
            if (res > 0)
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
