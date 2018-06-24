using JobSearch.Core.Contracts;
using JobSearch.Data;
using System.Collections.Generic;
using System.Web.Http;

namespace JobSearch.Web.Controllers
{
    public class RestController : ApiController
    {
        IRestService _DataTask;

        public RestController() { }

        public RestController( IRestService _DataTask )
        {
            this._DataTask = _DataTask;
        }
        [HttpGet]
        public IEnumerable<Jobs_Applied> getJobsApplied(int userId) { return _DataTask.ReturnJobsApplied( userId ); }

        [HttpGet]
        public IEnumerable<Jobs_Hired> getJobsHired(int userId) { return _DataTask.ReturnJobsHired( userId ); }

        [HttpGet]
        public IEnumerable<Job_Reviews> getJobReviews(int userId) { return _DataTask.ReturnJobReviews( userId ); }

        [HttpGet]
        public IEnumerable<Jobs> getJobMarket() { return _DataTask.ReturnJobMarket(); }

        [HttpGet]
        public IEnumerable<Jobs> getJobMarket(int companyId) { return _DataTask.ReturnJobMarket( companyId ); }

        [HttpGet]
        public IEnumerable<string> Index() { return new string[] {"test","Value" }; }

    }
}
