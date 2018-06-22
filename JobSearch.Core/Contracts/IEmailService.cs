using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobSearch.Core.Contracts
{
    public interface IEmailService
    {
        EmailTask AddRecipientId( string email, Guid? key );

        void SendVerificationLink();
    }
}
