using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class ExternalServices
    {
        public ExternalServices()
        {
            UserExternalServices = new HashSet<UserExternalServices>();
        }

        public short ExternalServiceId { get; set; }
        public string ExternalServiceName { get; set; }
        public bool ExternalServiceStatus { get; set; }

        public virtual ICollection<UserExternalServices> UserExternalServices { get; set; }
    }
}
