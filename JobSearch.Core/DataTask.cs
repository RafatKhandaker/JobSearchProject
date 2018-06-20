using JobSearch.Core.Contracts;
using System;
using JobSearch.Data;

namespace JobSearch.Core
{
    public class DataTask : IDBService, IRestService
    {
        IEmailService _EmailService;

        public DataTask( IEmailService _EmailService )
        {
            this._EmailService = _EmailService;
        }

        // IDBService Implements
        public void ExecuteTwoFactorTask(int id)
        {
            throw new NotImplementedException();
        }

        public int RetrieveLoginId(string user, string password)
        {
            throw new NotImplementedException();
        }


        public bool ValidateTwoFactorKey(Guid key)
        {
            throw new NotImplementedException();
        }


        // IRestService Implements
        public Jobs ReturnJobMarket()
        {
            throw new NotImplementedException();
        }

        public Job_Reviews ReturnJobReviews(int id)
        {
            throw new NotImplementedException();
        }

        public Jobs_Applied ReturnJobsApplied(int id)
        {
            throw new NotImplementedException();
        }

        public Jobs_Hired ReturnJobsHired(int id)
        {
            throw new NotImplementedException();
        }

    }
}
