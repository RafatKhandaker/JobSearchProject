using JobSearch.Core.Contracts;
using JobSearch.Data;
using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Http;

namespace JobSearch.Web.Controllers
{
    public class RestController : ApiController
    {
        IRestService _RestTask;
        ILoginService _LoginTask;
        IDBService _DBTask;

        public RestController() { }

        public RestController( IRestService _RestTask , ILoginService _LoginTask, IDBService _DBTask)
        {
            this._RestTask = _RestTask;
            this._LoginTask = _LoginTask;
            this._DBTask = _DBTask;
        }
        [HttpGet]
        public IEnumerable<Jobs_Applied> getJobsApplied(int userId) { return _RestTask.ReturnJobsApplied( userId ); }

        [HttpGet]
        public IEnumerable<Jobs_Hired> getJobsHired(int userId) { return _RestTask.ReturnJobsHired( userId ); }

        [HttpGet]
        public IEnumerable<Job_Reviews> getJobReviews(int userId) { return _RestTask.ReturnJobReviews( userId ); }

        [HttpGet]
        public IEnumerable<Jobs> getJobMarket() { return _RestTask.ReturnJobMarket(); }

        [HttpGet]
        public IEnumerable<Jobs> getJobMarket(int companyId) { return _RestTask.ReturnJobMarket( companyId ); }

        [HttpPost]
        public void LoginUser(string email, string pass)
        {
            if (_LoginTask.IfUserExists(email, pass))
            {
                _LoginTask.ExecuteTwoFactorTask( _DBTask.RetrieveLoginId( email, pass ));
            }
        }

        [HttpPost]
        public void SubmitTwoFactorKey(string user, Guid key)
        {
            if (_DBTask.ValidateTwoFactorKey(user, key))
            {
                HttpContext.Current.Session["user"] = key;
            };
        }

        [HttpGet]
        public IEnumerable<string> Index() { return new string[] {"test","Value" }; }

    }
}
