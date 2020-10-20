using System;
using System.Collections.Generic;
using System.Text;


namespace Model
{
    public partial class TeacherModel
    {
    
        public string ID_Teacher { get; set; }
        public int? ID_Subject { get; set; }
        public int? ID_Position { get; set; }
        public int? ID_Ranks { get; set; }
        public int? ID_Wage { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public string Name_Teacher { get; set; }
        public string Image_Teacher { get; set; }
        public bool? Gende_Teacher { get; set; }
        public string Phone__Teacher { get; set; }
        public string Email_Teacher { get; set; }
        public DateTime? DateBirth_Teacher { get; set; }
        public string Address_Teacher { get; set; }
        public string CurrentAddress_Teacher { get; set; }
        public string Nation_Teacher { get; set; }
        public string Religion_Teacher { get; set; }
        public string Level_Teacher { get; set; }
        public string Experience_Teacher { get; set; }
        public string IdentityCard_Teacher { get; set; }
        public DateTime? DateRange_Teacher { get; set; }
        public string IssuedBy_Teacher { get; set; }
        public DateTime? DayAdim_Teacher { get; set; }
        public string AddressAdmin_Teacher { get; set; }
        public int? status { get; set; }
        public string DP1 { get; set; }
        public string DP2 { get; set; }
    }
}
