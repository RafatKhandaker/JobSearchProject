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

        /* IDBService Implements -- Casual Database flow task */
        public void ExecuteTwoFactorTask(int id)
        {
            var query = DB.Employee_Details.Where(w => w.LoginId == id);
            try
            {
                _EmailService
                    .AddRecipientId( query.Select(s => s.Email).FirstOrDefault() , query.Select(s => s.Employee_Login.TwoFKey).FirstOrDefault()  )
                    .SendVerificationLink();
            }
            catch (Exception e) { throw e; }
        }

        public int RetrieveLoginId(string user, string password)
        {
            try
            {
                return Convert.ToInt32(
                    DB.Employee_Login.Where(w => w.Username == user && w.Password == password).Select(s => s.Id)
                    );
            }
            catch (Exception e) { throw e;  }
        }


        public bool ValidateTwoFactorKey(Guid key)
        {
            return DB.Employee_Login.Where(w => w.TwoFKey == key).Any();
        }


        /* IRestService Implements -- API Rest Controller */
        public IQueryable<Jobs> ReturnJobMarket()
        {
            return DB.Jobs.Select(s => s).OrderByDescending(o => o.DatePosted).Take(10000);       
        }

        public IQueryable<Job_Reviews> ReturnJobReviews(int id)
        {
            return DB.Job_Reviews.Where(w => w.JobId == id).OrderByDescending(o => o.Timestamp).Take(10000);
        }

        public IQueryable<Jobs_Applied> ReturnJobsApplied(int id)
        {
            return DB.Jobs_Applied.Where(w => w.ApplicantId == id).OrderByDescending(o => o.DateApplied).Take(10000);
        }

        public IQueryable<Jobs> ReturnJobMarket(int companyId)
        {
            return DB.Jobs.Where(w => w.CompanyId == companyId).OrderByDescending(o => o.DatePosted).Take(10000);
        }

        public IQueryable<Jobs_Hired> ReturnJobsHired(int id)
        {
            return DB.Jobs_Hired.Where(w => w.EmployeeId == id).OrderByDescending(o => o.DateHired).Take(10000);
        }

        public void Dispose()
        {
            DB.Dispose();
        }
    }
}
