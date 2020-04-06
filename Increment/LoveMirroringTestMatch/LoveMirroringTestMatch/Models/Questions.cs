using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Questions
    {
        public Questions()
        {
            Answers = new HashSet<Answers>();
        }

        public short QuestionId { get; set; }
        public string QuestionText { get; set; }

        public virtual ICollection<Answers> Answers { get; set; }
    }
}
