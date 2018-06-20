using JobSearch.Core.Contracts;
using System.Web.Mvc;

namespace JobSearch.Web.Controllers
{
    public class HomeController : Controller
    {
        IDBService _DataTask;

        public HomeController(IDBService _DataTask)
        {
            this._DataTask = _DataTask;
        }

        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }
    }
}