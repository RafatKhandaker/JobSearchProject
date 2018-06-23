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

        public RestController(IRestService _DataTask)
        {
            this._DataTask = _DataTask;
        }
        [HttpGet]
        public IEnumerable<Jobs_Applied> getJobsApplied(int id) { return _DataTask.ReturnJobsApplied(id); }

        [HttpGet]
        public IEnumerable<Jobs_Hired> getJobsHired(int id) { return _DataTask.ReturnJobsHired(id); }

        [HttpGet]
        public IEnumerable<Job_Reviews> getJobReviews(int id) { return _DataTask.ReturnJobReviews(id); }

        [HttpGet]
        public IEnumerable<Jobs> getJobMarket() { return _DataTask.ReturnJobMarket(); }

        [HttpGet]
        public IEnumerable<string> Index() { return new string[] {"test","Value" }; }

    }
}
