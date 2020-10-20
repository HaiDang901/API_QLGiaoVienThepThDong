using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherAcademicModel
    {
        public int ID_Academic { get; set; }
        public string ID_Teacher { get; set; }
        public string Name_Academic { get; set; }
        public DateTime? YearGredu_Academic { get; set; }
        public string Certificate_Academic { get; set; }
        public string Specialy__Academic { get; set; }
        public string UnitWork_Academic { get; set; }
        public string LevelIT_Academic { get; set; }
        public string LevelLag_Academic { get; set; }
        public string YeasTeaching_Academic { get; set; }
        public int? status { get; set; }
        public string DP1 { get; set; }
        public string DP2 { get; set; }
    }
}
