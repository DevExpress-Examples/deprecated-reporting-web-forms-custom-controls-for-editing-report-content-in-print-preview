<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="T460713.Default" %>

<%@ Register Assembly="DevExpress.XtraReports.v16.2.Web, Version=16.2.17.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraReports.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .comobox-editor {
            width: 100%;
            height: 100%;
            background: transparent;
            border: none;
            padding: 0;
            outline: 0;
        }
        .date-editor {
            border: none;
            background: transparent!important;
            width: 100%!important;
            height: 100%!important;
        }
        .date-editor input {
            background: transparent!important;
            font-family: "Times New Roman"!important;
            font-size: 9.75pt!important;
        }
    </style>
    <script type="text/html" id="comobox-editor-template">
         <select class="comobox-editor" data-bind="options: options.items, value: value, style: textStyle(), event: { blur: hideEditor }"></select>
    </script>
    <script type="text/html" id="date-editor-template">
        <div class="date-editor" data-bind="dxDateBox: {
            value: value,
            onFocusOut: hideEditor,
            acceptCustomValue: false,
            displayFormat: 'MMMM dd, yyyy',
            onValueChanged: formatValue,
            min: getDateValueLimit(-2),
            max: getDateValueLimit(2)
        }"></div>
    </script>
    <script type="text/javascript">
        function formatValue(e) {
            e.model.value(e.component.option("text"));
        }
        function getDateValueLimit(monthDelt) {
            var d = new Date();
            d.setMonth(d.getMonth() + monthDelt);
            return d;
        }
        function Init() {
            var items = [];
            for (var i = 1; i < 21; i++) {
                items.push("Item " + i);
            }
            DevExpress.Report.EditingFieldExtensions.registerEditor("ComboBoxEditor", "ComboBox Editor", "Custom", { items: items }, "comobox-editor-template");
            DevExpress.Report.EditingFieldExtensions.registerEditor("Phone", "Phone", "Custom", {
                mask: "(999) 000-0000",
                onValueChanged: formatValue
            });
            DevExpress.Report.EditingFieldExtensions.registerEditor("DateEditor", "Date Editor", "Custom", {}, "date-editor-template");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxWebDocumentViewer ID="ASPxWebDocumentViewer1" ClientSideEvents-Init="Init" runat="server"></dx:ASPxWebDocumentViewer>
    </div>
    </form>
</body>
</html>
