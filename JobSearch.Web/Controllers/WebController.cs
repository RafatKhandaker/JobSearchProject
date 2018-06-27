using JobSearch.Core.Contracts;
using System.Web.Mvc;

namespace JobSearch.Web.Controllers
{
    public class WebController : Controller
    {
        IDBService _DataTask;

        public WebController(IDBService _DataTask)
        {
            this._DataTask = _DataTask;
        }

        public WebController() { }

        [HttpGet]
        public ActionResult _Layout() { return View(); }

        [HttpGet]
        public ActionResult Index() { return View(); }

        [HttpGet]
        public ActionResult Login() { return View(); }

        [HttpGet]
        public ActionResult Register() { return View(); }
    }
}