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

        //CATEGORY
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

        //MANAGER
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

        //PRODUCT
        public IActionResult Product()
        {
            return View();
        }
        public IActionResult AddProduct()
        {
            return View();
        }
        public IActionResult EditProduct()
        {
            return View();
        }
        public IActionResult ProductDetail()
        {
            return View();
        }
    }
}
