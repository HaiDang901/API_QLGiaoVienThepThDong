using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherRanksOfficerModel
    {
        public int ID_Ranks { get; set; }
        public string Code_Ranks { get; set; }
        public string Name_Ranks { get; set; }
        public string Descript_Ranks { get; set; }
        public int? status { get; set; }
        public string DP1 { get; set; }
        public string DP2 { get; set; }
        public string Note_Ranks { get; set; }

    }
}
