using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherPositionModel
    {
        public int ID_Position { get; set; }
        public int? ID_Faculty { get; set; }
        public string Name_Position { get; set; }
        public int? Cent_Position { get; set; }
        public string Note_Position { get; set; }
        public string Respon_Position
        {
            get; set;
        }
    }
}
