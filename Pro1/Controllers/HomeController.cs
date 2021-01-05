using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Pro1.Models;

namespace Pro1.Controllers
{
    
    public class HomeController : Controller
    {
        private CompanyEntities db = new CompanyEntities();

        public ActionResult Index()
        {
            repo repo = new repo();
            repo.service = db.Services.ToList();
            repo.portofolio = db.Portofolios.ToList();
            repo.Team = db.Teams.ToList();

            return View(repo);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}