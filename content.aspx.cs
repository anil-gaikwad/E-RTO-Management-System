using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Content : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            slideshow();
        }
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
        slideshow();
    }
    public void slideshow()
    {
        Random random = new Random();
        int i = random.Next(1, 3);
       Image1.ImageUrl = "~/slideimages/" + i.ToString() + ".jpg";
    }
}