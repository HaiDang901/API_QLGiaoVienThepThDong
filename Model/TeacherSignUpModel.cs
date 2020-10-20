using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherSignUpModel
    {
        public int ID_SignUp { get; set; }
        public string ID_Teacher { get; set; }
        public int? ID_Sub { get; set; }
        public DateTime? Date_SignUp { get; set; }
        public string Note_SignUp { get; set; }
        public int? status { get; set; }
        public string DP1 { get; set; }
        public string DP2 { get; set; }
    }
}
