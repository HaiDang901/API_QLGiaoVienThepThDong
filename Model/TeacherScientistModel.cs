using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherScientistModel
    {
        public int ID_Scientist { get; set; }
        public string ID_Teacher { get; set; }
        public string Name_Scientist { get; set; }
        public string Type_Scientist { get; set; }
        public string Link_Scientist { get; set; }
        public string Note_Scientist { get; set; }
        public int? status { get; set; }
        public string DP1 { get; set; }
        public string DP2 { get; set; }
    } 
}
