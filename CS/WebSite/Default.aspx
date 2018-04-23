<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="BatchUpdate" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.1" Namespace="DevExpress.Web.ASPxEditors"  TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.1" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>
<%@ Register Assembly="DevExpress.Web.v8.1" Namespace="DevExpress.Web.ASPxPager" TagPrefix="dxwp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%-- EndRegion --%>
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Focus a certain editor in the EditForm</title>
<script type="text/javascript">
function FocusQuantity() {
    grid.FocusEditor('Quantity');
}
</script>    
</head>
<body>
    <form id="form1" runat="server">
    
    <dxwgv:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="ObjectDataSource1" KeyFieldName="Id" Width="300px">
        <Columns>
            <dxwgv:GridViewCommandColumn  VisibleIndex="0">
                <EditButton Visible="true"></EditButton>
            </dxwgv:GridViewCommandColumn>
        <%-- BeginRegion Data Columns --%>
            <dxwgv:GridViewDataColumn FieldName="Id" VisibleIndex="2">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="Name" VisibleIndex="3">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataColumn FieldName="Quantity" VisibleIndex="4">
            </dxwgv:GridViewDataColumn>
            <dxwgv:GridViewDataTextColumn FieldName="Price" VisibleIndex="5">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dxwgv:GridViewDataTextColumn>
            <dxwgv:GridViewDataTextColumn FieldName="Total" VisibleIndex="6">
                <PropertiesTextEdit DisplayFormatString="c"></PropertiesTextEdit>
            </dxwgv:GridViewDataTextColumn>
        <%-- EndRegion --%>
        </Columns>
        <ClientSideEvents EndCallback="function(s, e) { FocusQuantity();}" BeginCallback="function(s, e) { FocusQuantity();}" Init="function(s, e) { FocusQuantity();}" />    
    </dxwgv:ASPxGridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"
            SelectMethod="GetItems" TypeName="InvoiceItemsProvider" UpdateMethod="Update" InsertMethod="Insert" DeleteMethod="Delete" ></asp:ObjectDataSource>
    </form>
</body>
</html>
