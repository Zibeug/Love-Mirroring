using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class Subscriptions
    {
        public Subscriptions()
        {
            AspNetUsers = new HashSet<AspNetUsers>();
        }

        public short SubscriptionId { get; set; }
        public string SubscriptionName { get; set; }
        public decimal SubscriptionPrice { get; set; }
        public DateTime SubscriptionDate { get; set; }

        public virtual ICollection<AspNetUsers> AspNetUsers { get; set; }
    }
}
