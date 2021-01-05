using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Pro1.Models;
using System.IO;

namespace Pro1.Controllers
{
    public class PortofoliosController : Controller
    {
        private CompanyEntities db = new CompanyEntities();

        // GET: Portofolios
        public ActionResult Index()
        {
            return View(db.Portofolios.ToList());
        }

        public ActionResult AdminIndex()
        {
            return View(db.Portofolios.ToList());
        }
        // GET: Portofolios/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Portofolio portofolio = db.Portofolios.Find(id);
            if (portofolio == null)
            {
                return HttpNotFound();
            }
            return View(portofolio);
        }

        // GET: Portofolios/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Portofolios/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Portofolio portofolio, HttpPostedFileBase upload)
        {
            if (ModelState.IsValid)
            {
                string path = Path.Combine(Server.MapPath("~/Image/"), upload.FileName);
                upload.SaveAs(path);
                portofolio.Prt_img = upload.FileName;
                db.Portofolios.Add(portofolio);
                db.SaveChanges();
                return RedirectToAction("AdminIndex");
            }

            return View(portofolio);
        }

        // GET: Portofolios/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Portofolio portofolio = db.Portofolios.Find(id);
            if (portofolio == null)
            {
                return HttpNotFound();
            }
            return View(portofolio);
        }

        // POST: Portofolios/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Prt_Id,Prt_Name,Prt_Date,Prt_Client,Prt_Categry,Prt_img")] Portofolio portofolio, HttpPostedFileBase upload)
        {
            string oldPath = Path.Combine(Server.MapPath("~/Image/") + portofolio.Prt_img);

            if (ModelState.IsValid)
            {
                if (upload != null)
                {
                //    System.IO.File.Delete(oldPath);
                    string path = Path.Combine(Server.MapPath("~/Image/"), upload.FileName);
                    upload.SaveAs(path);
                    portofolio.Prt_img = upload.FileName;
                }
                db.Entry(portofolio).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("AdminIndex");
            }
            return View(portofolio);
        }

        // GET: Portofolios/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Portofolio portofolio = db.Portofolios.Find(id);
            if (portofolio == null)
            {
                return HttpNotFound();
            }
            return View(portofolio);
        }

        // POST: Portofolios/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Portofolio portofolio = db.Portofolios.Find(id);
            db.Portofolios.Remove(portofolio);
            db.SaveChanges();
            return RedirectToAction("AdminIndex");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
