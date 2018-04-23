Imports DevExpress.XtraReports.UI
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace T460713
    Partial Public Class [Default]
        Inherits System.Web.UI.Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
            Dim filePath = HttpContext.Current.Server.MapPath("~/Xtrareport1.repx")
            ASPxWebDocumentViewer1.OpenReport(XtraReport.FromFile(filePath, True))
        End Sub
    End Class
End Namespace