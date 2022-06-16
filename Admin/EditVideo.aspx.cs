using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_EditVideo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {
        int PostID = Convert.ToInt32(DetailsView1.DataKey.Value.ToString());

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            var PostToBeDeleted = (
                from p in DataContext.Posts 
                where p.PostID == PostID 
                select p).FirstOrDefault();

            var VideoToBeDeleted = (
                from v in DataContext.Videos 
                where v.PostIDfk == PostID 
                select v).FirstOrDefault();

            string webRootPath = Server.MapPath("~");
            File.Delete(webRootPath + PostToBeDeleted.PostPicture);
            File.Delete(webRootPath + VideoToBeDeleted.VideoUrl);
        }


    }
}