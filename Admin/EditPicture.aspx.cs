using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_EditPicture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {
        int PostID = Convert.ToInt32(DetailsView1.DataKey.Value.ToString());

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {

            var PictureToBeDeleted = (
                from p in DataContext.PicturesURLs 
                where p.PicturePostIDfk == PostID 
                select p);

            string webRootPath = Server.MapPath("~");

            foreach (var item in PictureToBeDeleted)
            {
                File.Delete(webRootPath + item.PictureURL);
            }
        }
    }
}