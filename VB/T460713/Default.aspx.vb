Imports DevExpress.XtraReports.UI
Imports System
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace T460713

    Public Partial Class [Default]
        Inherits Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
            Dim filePath = HttpContext.Current.Server.MapPath("~/Xtrareport1.repx")
            ASPxWebDocumentViewer1.OpenReport(XtraReport.FromFile(filePath, True))
        End Sub
    End Class
End Namespace
