<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Focus a certain editor in the EditForm</title>
    <script type="text/javascript">
        function FocusQuantity() {
            window.setTimeout(function() {
                grid.FocusEditor('Quantity');
            }, 0);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxGridView ID="grid" runat="server" ClientInstanceName="grid" 
            DataSourceID="ObjectDataSource1" KeyFieldName="Id">

            <SettingsEditing Mode="PopupEditForm" />

            <Columns>
                <dx:GridViewCommandColumn ShowEditButton="true" />
                <dx:GridViewDataColumn FieldName="Id">
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="Name">
                </dx:GridViewDataColumn>
                <dx:GridViewDataColumn FieldName="Quantity">
                </dx:GridViewDataColumn>
                <dx:GridViewDataTextColumn FieldName="Price">
                    <PropertiesTextEdit DisplayFormatString="c"/>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="Total">
                    <PropertiesTextEdit DisplayFormatString="c"/>
                </dx:GridViewDataTextColumn>
            </Columns>
            <ClientSideEvents EndCallback="function(s, e) { FocusQuantity();}" BeginCallback="function(s, e) { FocusQuantity();}"
                Init="function(s, e) { FocusQuantity();}" />
        </dx:ASPxGridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" TypeName="InvoiceItemsProvider"
            SelectMethod="GetItems" UpdateMethod="Update" InsertMethod="Insert" DeleteMethod="Delete">
        </asp:ObjectDataSource>
    </form>
</body>
</html>