using JobSearch.Core.Contracts;
using System;
using JobSearch.Data;
using System.Linq;

namespace JobSearch.Core
{
    public class DataTask : IDBService, IRestService, IDisposable
    {
        IEmailService _EmailService;
        JobSearchDBEntities DB;

        public DataTask() { }

        public DataTask( IEmailService _EmailService )
        {
            this._EmailService = _EmailService;
            this.DB = new JobSearchDBEntities();
        }

        // IDBService Implements
        public void ExecuteTwoFactorTask(int id)
        {
            throw new NotImplementedException();
        }

        public int RetrieveLoginId(string user, string password)
        {
            try
            {
                return Convert.ToInt32(
                    DB.Employee_Login.Where(w => w.Username == user && w.Password == password).Select(s => s.Id)
                    );
            }
            catch (Exception e) { throw new UnauthorizedAccessException();  }
        }


        public bool ValidateTwoFactorKey(Guid key)
        {
            return DB.Employee_Login.Where(w => w.TwoFKey == key).Any();
        }


        // IRestService Implements
        public IQueryable<Jobs> ReturnJobMarket()
        {
            return DB.Jobs.Select(s => s);       
        }

        public IQueryable<Job_Reviews> ReturnJobReviews(int id)
        {
            return DB.Job_Reviews.Where(w => w.JobId == id);
        }

        public IQueryable<Jobs_Applied> ReturnJobsApplied(int id)
        {
            return DB.Jobs_Applied.Where(w => w.ApplicantId == id);
        }

        public IQueryable<Jobs_Hired> ReturnJobsHired(int id)
        {
            return DB.Jobs_Hired.Where(w => w.EmployeeId == id);
        }

        public void Dispose()
        {
            DB.Dispose();
        }
    }
}
