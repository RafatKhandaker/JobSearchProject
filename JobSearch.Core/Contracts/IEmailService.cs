﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobSearch.Core.Contracts
{
    public interface IEmailService
    {
        void AddRecipientId( string email );

        void SendVerificationLink();
    }
}
