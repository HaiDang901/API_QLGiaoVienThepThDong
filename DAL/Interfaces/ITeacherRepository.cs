using System;
using System.Collections.Generic;
using System.Text;
using Model;

namespace DAL
{
    public interface ITeacherRepository
    {
        List<TeacherModel> GetData();
        bool Create(TeacherModel model);

        TeacherModel GetTeacher(bool Gende_Teacher);
        TeacherModel GetbyID(string id);
        bool Update(TeacherModel model);
        bool Delete(string id);
        List<TeacherModel> Search(int pageIndex, int pageSize, out long total, string Name_Teacher, string Nation_Teacher);
    }
}
