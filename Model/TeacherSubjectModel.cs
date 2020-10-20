using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherSubjectModel
    {
        public int ID_Subject { get; set; }
        public int? ID_Faculty { get; set; }
        public string Name_Subject { get; set; }
        public string Address_Subject { get; set; }
        public string Phone_Subject { get; set; }
        public string Leader { get; set; }
        public string Leader_Assis { get; set; }
    }
}
