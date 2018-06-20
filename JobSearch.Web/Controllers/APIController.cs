using JobSearch.Core.Contracts;
using System.Web.Http;

namespace JobSearch.Web.Controllers
{
    public class APIController : ApiController
    {
        IRestService _DataTask;

        public APIController(IRestService _DataTask)
        {
            this._DataTask = _DataTask;
        }
   
    }
}
