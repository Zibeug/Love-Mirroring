using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Answers
    {
        public short AnswerId { get; set; }
        public short ProfilId { get; set; }
        public short QuestionId { get; set; }
        public string AnswerText { get; set; }
        public short AnswerValue { get; set; }

        public virtual Profils Profil { get; set; }
        public virtual Questions Question { get; set; }
    }
}
