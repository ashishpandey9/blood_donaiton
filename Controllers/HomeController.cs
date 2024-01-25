using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using blood_donation.Models;

namespace Demo1.Controllers
{
    public class HomeController : Controller
    {
        //
        //GET:/home/

        BloodEntities db = new BloodEntities ();

        public ActionResult index()
        {
            return View();
        }

        public ActionResult Registration()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Registration(TBL_Registration reg)
        {
            try
            {
                //start code of file
                HttpPostedFileBase file = Request.Files["Profile"];
                reg.Profile = file.FileName;
                //end code of file.
                reg.RegDate = DateTime.Now.ToString();
                file.SaveAs(Server.MapPath("~/content/img" + file.FileName));
                db.TBL_Registration.Add(reg);
                db.SaveChanges();
                Response.Write("<script>alert('Record Save')</script>");

            }
            catch (Exception Ex)
            {
                Response.Write("<script>alert('data not saved')</script>");
            }
            return View();
        }
        public ActionResult aboutus()
        {
            return View();
        }

        public ActionResult contact()
        {
            return View();
        }
        [HttpPost]
        public ActionResult contact(TBL_Contact reg,string hdn1,string ct1)
            {
            try
            {
                if (hdn1==ct1)
                {
                    db.TBL_Contact.Add(reg);
                    db.SaveChanges();
                    Response.Write("<script>alert('Record Save')</script>");
                }
                else
                {
                }
            }
            catch (Exception Ex)
            {
                Response.Write("<script>alert('data not saved')</script>");
            }
            return View();

        }
        public ActionResult Login()
        {

            return View();
        }
        [HttpPost]
        public ActionResult Login(TBL_newLogin Ig)
        {
            try
            {
                TBL_newLogin t1 = db.TBL_newLogin.Where(x => x.Email == Ig.Email && x.password == Ig.password).SingleOrDefault();
                if (t1 != null)
                {
                    Session["aid"] = Ig.Email;    //set of session
                    Response.Write("<script>alert ('Welcome to AdminZone');window.location.href='/AdminZone/Index'</script>");
                }
                else
                {
                    Response.Write("<script>alert('Invalid UserId or password')</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Invalid UserId or password')</script>");
            }
            return View();
        }
    }
}

