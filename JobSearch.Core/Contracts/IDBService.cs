using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace JobSearch.Core.Contracts
{
    public interface IDBService
    {
        int RetrieveLoginId( string user, string password );

        void ExecuteTwoFactorTask( int id );

        bool ValidateTwoFactorKey( Guid key );
    }
}
