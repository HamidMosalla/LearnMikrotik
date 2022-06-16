using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_AdminSendjQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitjQery_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {


            using (LearnMikrotik_DatabaseEntities LearnMikrotikDataModel = new LearnMikrotik_DatabaseEntities())
            {


                jQuery jQeryTable = new jQuery();
                jQeryTable.jQueryTitle = jQueryTitle.Text;
                jQeryTable.jQueryContent = HttpUtility.HtmlEncode(jQueryEditor.Content);

                if (jQueryPicture.HasFile)
                {
                    string FileName = Path.GetFileName(jQueryPicture.PostedFile.FileName);
                    jQueryPicture.SaveAs(Server.MapPath("../Images/jQueryPicture/" + FileName));
                    jQeryTable.jQueryPicture = "Images/jQueryPicture/" + FileName;
                }
                else
                {
                    jQeryTable.jQueryPicture = DBNull.Value.ToString();
                }

                LearnMikrotikDataModel.jQueries.Add(jQeryTable);
                LearnMikrotikDataModel.SaveChanges();
                NewsPostMessage.Visible = true;
            }
        }

    }

}