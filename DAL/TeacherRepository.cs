using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using DAL.Helper;
using Model;
using DAL;

namespace DAL
{
    public partial class TeacherRepository : ITeacherRepository
    {
        private IDatabaseHelper _dbHelper;
        public TeacherRepository(IDatabaseHelper dbHelper)
        {
            _dbHelper = dbHelper;
        }
        public List<TeacherModel> GetData()
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "Teacher_all");
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                return dt.ConvertTo<TeacherModel>().ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        public bool Create(TeacherModel model)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "Teacher_create",
                    "@ID_Teacher ", model.ID_Teacher,
                    "@ID_Subject", model.ID_Subject,
                    "@ID_Position", model.ID_Position,
                    "@ID_Ranks",model.ID_Ranks,
                    "@ID_Wage",model.ID_Wage,
                    "@First_Name",model.First_Name,
                    "@Last_Name",model.Last_Name,
                    "@Name_Teacher",model.Name_Teacher,
                    "@Image_Teacher",model.Image_Teacher,
                    "@Gende_Teacher",model.Gende_Teacher,
                    "@Phone__Teacher", model.Phone__Teacher,
                    "@Email_Teacher", model.Email_Teacher,
                    "@DateBirth_Teacher", model.DateBirth_Teacher,
                    "@Address_Teacher", model.Address_Teacher,
                    "@CurrentAddress_Teacher", model.CurrentAddress_Teacher,
                    "@Nation_Teacher", model.Nation_Teacher,
                    "@Religion_Teacher", model.Religion_Teacher,
                    "@Level_Teacher", model.Level_Teacher,
                    "@Experience_Teacher", model.Experience_Teacher,
                    "@IdentityCard_Teacher", model.IdentityCard_Teacher,
                    "@DateRange_Teacher", model.DateRange_Teacher,
                    "@IssuedBy_Teacher", model.IssuedBy_Teacher,
                    "@DayAdim_Teacher", model.DayAdim_Teacher,
                    "@AddressAdmin_Teacher", model.AddressAdmin_Teacher,
                    "@status", model.status);
                if ((result != null && !string.IsNullOrEmpty(result.ToString())) || !string.IsNullOrEmpty(msgError))
                {
                    throw new Exception(Convert.ToString(result) + msgError);
                }
                return true;
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }

        public bool Delete(string id)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "Teacher_delete",
                "@ID_Teacher", id);
                if ((result != null && !string.IsNullOrEmpty(result.ToString())) || !string.IsNullOrEmpty(msgError))
                {
                    throw new Exception(Convert.ToString(result) + msgError);
                }
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public bool Update(TeacherModel model)
        {
            string msgError = "";
            try
            {
                var result = _dbHelper.ExecuteScalarSProcedureWithTransaction(out msgError, "Teacher_update",
                    "@ID_Teacher ", model.ID_Teacher,
                    "@First_Name", model.First_Name,
                    "@Last_Name", model.Last_Name,
                    "@Name_Teacher", model.Name_Teacher,
                    "@Image_Teacher", model.Image_Teacher,
                    "@Phone__Teacher", model.Phone__Teacher,
                    "@Email_Teacher", model.Email_Teacher,
                    "@DateBirth_Teacher", model.DateBirth_Teacher,
                    "@Address_Teacher", model.Address_Teacher,                
                    "@Nation_Teacher", model.Nation_Teacher,    
                    "@Level_Teacher", model.Level_Teacher,
                    "@Experience_Teacher", model.Experience_Teacher,
                    "@status", model.status);
                if ((result != null && !string.IsNullOrEmpty(result.ToString())) || !string.IsNullOrEmpty(msgError))
                {
                    throw new Exception(Convert.ToString(result) + msgError);
                }
                return true;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public TeacherModel GetTeacher(bool Gende_Teacher)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "Teacher_get_by_gender",
                     "@Gende_Teacher", Gende_Teacher);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                return dt.ConvertTo<TeacherModel>().FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public TeacherModel GetbyID(string id)
        {
            string msgError = "";
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "Teacher_get_by_id",
                     "@ID_Teacher", id);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                return dt.ConvertTo<TeacherModel>().FirstOrDefault();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public List<TeacherModel> Search(int pageIndex, int pageSize, out long total, string Name_Teacher, string Nation_Teacher)
        {
            string msgError = "";
            total = 0;
            try
            {
                var dt = _dbHelper.ExecuteSProcedureReturnDataTable(out msgError, "Teacher_search",
                    "@page_index", pageIndex,
                    "@page_size", pageSize,
                    "@Name_Teacher", Name_Teacher,
                    "@Nation_Teacher", Nation_Teacher);
                if (!string.IsNullOrEmpty(msgError))
                    throw new Exception(msgError);
                if (dt.Rows.Count > 0) total = (long)dt.Rows[0]["RecordCount"];
                return dt.ConvertTo<TeacherModel>().ToList();
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}
