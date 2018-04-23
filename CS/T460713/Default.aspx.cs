using DevExpress.XtraReports.UI;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace T460713
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var filePath = HttpContext.Current.Server.MapPath("~/Xtrareport1.repx");
            ASPxWebDocumentViewer1.OpenReport(XtraReport.FromFile(filePath, true));
        }
    }
}