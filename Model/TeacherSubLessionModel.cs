using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherSubLessionModel
    {
        public int ID_Sub { get; set; }
        public string Name_Sub { get; set; }
        public string Type_Sub { get; set; }
        public int? Number_credits_Sub { get; set; }
        public int? status { get; set; }
        public string DP1 { get; set; }
    }
}
