using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_EditjQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DetailsView1_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
    {
        int jQueryID = Convert.ToInt32(DetailsView1.DataKey.Value.ToString());

        using (LearnMikrotik_DatabaseEntities DataContext = new LearnMikrotik_DatabaseEntities())
        {
            var jQueryToBeDeleted = (
                from j in DataContext.jQueries 
                where j.jQueryID == jQueryID 
                select j).FirstOrDefault();

            string webRootPath = Server.MapPath("~");
            File.Delete(webRootPath + jQueryToBeDeleted.jQueryPicture);
        }
    }
}