using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherSalaryRaiseModel
    {
        public int ID_Raise { get; set; }
        public int? ID_Salary { get; set; }
        public int? ID_Wage { get; set; }
        public double? CoeffOld_Raise { get; set; }
        public double? CoeffNew_Raise { get; set; }
    }
}
