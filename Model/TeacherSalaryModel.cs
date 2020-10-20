using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherSalaryModel
    {
        public int ID_Salary { get; set; }
        public int? ID_Wage { get; set; }
        public int? Wage_Salary { get; set; }
        public int? Basic_Salary { get; set; }
        public int? Sub_Salary { get; set; }
        public string Date_Salary { get; set; }
        public DateTime? DateIcre_Salary { get; set; }
        public int? status { get; set; }
        public string DP1 { get; set; }
    }
}
