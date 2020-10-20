using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherWageModel
    {
        public int ID_Wage { get; set; }
        public string Name_Wage { get; set; }
        public double? Coeff_Wage { get; set; }
        public int? status { get; set; }
        public string Group_Wage { get; set; }
    }
}
