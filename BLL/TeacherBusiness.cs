using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace BLL
{
    public partial class TeacherBusiness : ITeacherBusiness
    {
        private ITeacherRepository _res;
        public TeacherBusiness(ITeacherRepository TeacherRes)
        {
            _res = TeacherRes;
        }
        public bool Create(TeacherModel model)
        {
            return _res.Create(model);
        }
        public List<TeacherModel> GetData()
        {
            return _res.GetData();
        }
        public TeacherModel GetTeacher(bool Gende_Teacher)
        {
            return _res.GetTeacher(Gende_Teacher);
        }
        public bool Delete(string id)
        {
            return _res.Delete(id);
        }
        public TeacherModel GetbyID(string id)
        {
            return _res.GetbyID(id);
        }
        public bool Update(TeacherModel model)
        {
            return _res.Update(model);
        }
        public List<TeacherModel> Search(int pageIndex, int pageSize, out long total, string Name_Teacher, string Nation_Teacher)
        {
            return _res.Search(pageIndex, pageSize, out total, Name_Teacher, Nation_Teacher);
        }
    }

}
