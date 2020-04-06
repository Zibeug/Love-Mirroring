using System;
using System.Collections.Generic;

namespace LoveMirroringTestMatch.Models
{
    public partial class UsersExternalServices
    {
        public short ExternalServiceId { get; set; }
        public string Id { get; set; }

        public virtual ExternalServices ExternalService { get; set; }
        public virtual AspNetUsers IdNavigation { get; set; }
    }
}
