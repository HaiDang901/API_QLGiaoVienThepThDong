using Model;
using System;
using System.Collections.Generic;
using System.Text;

namespace BLL
{
    public partial interface ITeacherBusiness
    {
        bool Create(TeacherModel model);

        List<TeacherModel> GetData();
        TeacherModel GetbyID(string id);
        TeacherModel GetTeacher(bool Gende_Teacher);
        bool Delete(string id);
        bool Update(TeacherModel model);
        List<TeacherModel> Search(int pageIndex, int pageSize, out long total, string Name_Teacher, string Nation_Teacher);
    }
}
