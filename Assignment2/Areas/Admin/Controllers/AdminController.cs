using Microsoft.AspNetCore.Mvc;

namespace Assignment2.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class AdminController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult Category()
        {
            return View();
        }
        public IActionResult AddCategory()
        {
            return View();
        }
        public IActionResult EditCategory()
        {
            return View();
        }
        public IActionResult Manager()
        {
            return View();
        }
        public IActionResult AddManager()
        {
            return View();
        }
        public IActionResult EditManager()
        {
            return View();
        }
    }
}
