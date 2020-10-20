using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherContractModel
    {
        public int ID_Contract { get; set; }
        public string ID_Teacher { get; set; }
        public string Type_Contract { get; set; }
        public DateTime? Since_Contract { get; set; }
        public DateTime? Come_Contract { get; set; }
        public string Note_Contract { get; set; }
        public int? status { get; set; }
        public string DP1 { get; set; }
        public string DP2 { get; set; }
    }
}
