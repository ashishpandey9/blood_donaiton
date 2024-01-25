using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using blood_donation.Models;

namespace blood_donation.Controllers
{
    public class AdminzoneController : Controller
    {
        //
        // GET: /Adminzone/
        BloodEntities db = new BloodEntities();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult contactMGMT()
        {
            List<TBL_Contact> lst = null;
            lst = db.TBL_Contact.ToList();
            return View(lst);
        }
        public ActionResult RegistrationMGMT()
        {

            List<TBL_Registration> gt= null;
           gt = db.TBL_Registration.ToList();
            return View(gt);
        }
            public ActionResult LoginMGMT()
        {

            List<TBL_Contact> gt= null;
           gt = db.TBL_Contact.ToList();
            return View(gt);
        }

         public ActionResult ChangePassword1()
        {
            return View();
        }
         [HttpPost]
         public ActionResult ChangePassword1(string oldpass,string newpass,string confirmpass)
         {
             if (newpass==confirmpass)
             {
                 string Email = Session["aid"].ToString();
                 TBL_newLogin lg = db.TBL_newLogin.Where(x => x.password == oldpass && x.Email == x.Email).SingleOrDefault();
                 lg.password = confirmpass;
                 db.SaveChanges();
                 Response.Write("<script>alert('Your password changed');window.location.href='/Home/Login'</script>");

                 //string Email = Session["aid"].ToString();
                 //TBL_Login lg = db.TBL_Login.Where(x => x.Password == oldpass && x.Email == x.Email).SingleOrDefault();
                 //lg.Password = confirmpass;
                 //db.SaveChanges();
                 //Response.Write("<script>alert('Password Changed Successfully');window.location.href='/Home/login'</script>");
             }
             else
             {
                 Response.Write("<script>alert('Please Enter Confirm password')</script>");
             }
             return View();
         }

             public void Logout()
        {
            Session.Abandon();
            Response.Write("<script>alert('LogOut');window.location.href='/Home/Login'</script>");
        }
           public void Delete()
        {
            try
            {
                string m = Request.QueryString["m"];
                TBL_Registration tbl = db.TBL_Registration.SingleOrDefault(x => x.Email == m);
                db.TBL_Registration.Remove(tbl);
                db.SaveChanges();
                Response.Write("<script>alert('Record Delete successfully');window.location.href='/AdminZone/RegistrationMGMT'</script>");

            }
            catch (Exception Ex)
            {
                Response.Write("<script>alert('Record Not Delete');window.location.href='/AdminZone/RegistrationMGMT'</script>");
            }

            }
        [HttpGet]
        public ActionResult UpdateRecord()
        {
            string aid=Request.QueryString["U"];
            TBL_Registration reg = db.TBL_Registration.SingleOrDefault(a => a.Email == aid);
        
            return View(reg);
        }
        [HttpPost]
        public void UpdateRecord(TBL_Registration reg, string email)
        {
            TBL_Registration rg = db.TBL_Registration.SingleOrDefault(a => a.Email == email);
            try
            {
                HttpPostedFileBase file = Request.Files["Profile"];
                if (file.FileName != "")
                {
                    rg.Name = reg.Name;
                    rg.Mobile = reg.Mobile;
                    rg.Profile = file.FileName;
                    rg.Qualification = reg.Qualification;
                    rg.Gender = reg.Gender;
                    rg.DOB = reg.DOB;
                    rg.District = reg.District;
                    rg.RegDate = DateTime.Now.ToString();
                    rg.Address = reg.Address;
                    db.SaveChanges();
                    file.SaveAs(Server.MapPath("~/Content/IMG/" + file.FileName));
                    Response.Write("<script>alert('Record Updated Successfully');window.location.href='/AdminZone/RegistrationMGMT'</script>");
                }
                else
                {
                    TBL_Registration dd = db.TBL_Registration.SingleOrDefault(x => x.Email == email);
                    dd.Name = reg.Name;
                    dd.Mobile = reg.Mobile;
                    // rg.Profile = file.FileName;
                    dd.Qualification = reg.Qualification;
                    dd.Gender = reg.Gender;
                    dd.DOB = reg.DOB;
                    dd.District = reg.District;
                    dd.RegDate = DateTime.Now.ToString();
                    dd.Address = reg.Address;
                    db.SaveChanges();

                    Response.Write("<script>alert('Record Updated Successfully');window.location.href='/AdminZone/RegistrationMGMT'</script>");

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Record Not Update')</script>");
            }
        }
    }
}


                
    


