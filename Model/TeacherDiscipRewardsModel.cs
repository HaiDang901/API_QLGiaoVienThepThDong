using System;
using System.Collections.Generic;
using System.Text;

namespace Model
{
    public partial class TeacherDiscipRewardsModel
    {
        public int ID_DisRewards { get; set; }
        public string ID_Teacher { get; set; }
        public string Name_DisRewards { get; set; }
        public string Reason_DisRewards { get; set; }
        public DateTime? Day_DisRewards { get; set; }
        public string Form_DisRewards { get; set; }
        public string Note_DisRewards { get; set; }
        public int? status { get; set; }
        public string DP1 { get; set; }
    }
}
