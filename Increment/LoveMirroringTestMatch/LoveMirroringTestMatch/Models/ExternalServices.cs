using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class ExternalServices
    {
        public ExternalServices()
        {
            UsersExternalServices = new HashSet<UsersExternalServices>();
        }

        public short ExternalServiceId { get; set; }
        public string ExternalServiceName { get; set; }
        public bool ExternalServiceStatus { get; set; }

        public virtual ICollection<UsersExternalServices> UsersExternalServices { get; set; }
    }
}
