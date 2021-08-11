using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ShopCayCanh
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            RouteConfig.RegisterRoutes(RouteTable.Routes);

            int visitCounter = 0;
            //Kiểm tra file count_visit.txt nếu không tồn tại thì
            if (System.IO.File.Exists(Server.MapPath("count_visit.txt")) == false)
            {
                visitCounter = 1;
            }
            // Ngược lại thì
            else
            {
                // Đọc dử liều từ file count_visit.txt
                System.IO.StreamReader read = new System.IO.StreamReader(Server.MapPath("count_visit.txt"));
                visitCounter = int.Parse(read.ReadLine());
                read.Close();
                // Tăng biến count_visit thêm 1
                visitCounter++;
            }

            // khóa website
            Application.Lock();
            // gán biến Application count_visit
            Application["VisitCounter"] = visitCounter;
            // Mở khóa website
            Application.UnLock();

            //Khi chạy từ Visual Studio thì event Application_End không được trigger.
            //Nên tạm thời ghi file ngay trên Application_Start để lưu lại số lượt truy cập
            System.IO.StreamWriter writer = new System.IO.StreamWriter(Server.MapPath("count_visit.txt"));
            writer.WriteLine(visitCounter);
            writer.Close();
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown
            // Khi tắt app thì lưu số truy cập hiện có vào file count_visit.txt

            //Khi chạy từ Visual Studio thì event này không được trigger.
            //Nên tạm thời ghi file ngay trên Application_Start để lưu lại số lượt truy cập
            int visitCounter = (int)Application["VisitCounter"];
            System.IO.StreamWriter writer = new System.IO.StreamWriter(Server.MapPath("count_visit.txt"));
            writer.WriteLine(visitCounter);
            writer.Close();

        }
        protected void Session_Start()
        {
            Session["cart"] = "";
            Session["favoriteProduct"] = "";
            Session["Admin_id"] = "";
            Session["Admin_user"] = "";
            Session["Admin_fullname"] = "";
            Session["Message"] = "";
            Session["id"] = "";
            Session["user"] = "";


            Application.Lock();
            //nếu chưa tồn tại sesion thì khởi tạo
            if (Application["OnlineUsers"] == null)
                Application["OnlineUsers"] = 0;
            //sau đó tăng số đếm
            Application["OnlineUsers"] = (int)Application["OnlineUsers"] + 1;
            Application.UnLock();
            
        }

        void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            //giảm số đếm người online
            Application["OnlineUsers"] = (int)Application["OnlineUsers"] - 1;
            Application.UnLock();
        }
    }
}
