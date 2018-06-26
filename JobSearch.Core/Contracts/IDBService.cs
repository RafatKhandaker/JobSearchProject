using System;


namespace JobSearch.Core.Contracts
{
    public interface IDBService
    {
        int RetrieveLoginId( string user, string password );

        bool ValidateTwoFactorKey( string user, Guid key );
    }
}
