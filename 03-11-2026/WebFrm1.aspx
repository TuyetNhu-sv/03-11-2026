<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFrm1.aspx.cs" Inherits="_03_11_2026.WebFrm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h3>
            Chọn chức vụ:
        </h3>
        <div>
            <asp:DropDownList ID="DDL_ChucVu" runat="server"></asp:DropDownList>
           
        </div>
        <hr />
        <br />
        <div>
            <asp:GridView ID="GridView_ChucVu" runat="server" Height="198px" Width="332px" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" EnableSortingAndPagingCallbacks="True" GridLines="None" PageSize="5">
                <Columns>
                    <asp:BoundField DataField="MaCV" HeaderText="Mã chức vụ" />
                    <asp:BoundField DataField="TenCV" HeaderText="Tên chức vụ" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
        </div>
        <br />
        <hr />
        <div>
             <asp:Button ID="btnShowList" runat="server" Text="HIỂN THỊ DANH SÁCH" OnClick="btnShowList_Click" />
        </div>
        <br />
        <div>
            <asp:GridView ID="GridView_NhanVien" runat="server" Height="198px" Width="332px" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>

        <div>
            <h2 style="color:rebeccapurple"> DANH SÁCH BỘ PHẬN </h2>
        </div>
        <div>
            <asp:GridView ID="GridView_BoPhan" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView_BoPhan_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ButtonType="Button" SelectText="Chọn" ShowSelectButton="True" />
                    <asp:BoundField HeaderText="Mã bộ phận" DataField="MaBP" />
                    <asp:BoundField HeaderText="Tên bộ phận" DataField="TenBP" />
                </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                <SortedAscendingCellStyle BackColor="#FEFCEB" />
                <SortedAscendingHeaderStyle BackColor="#AF0101" />
                <SortedDescendingCellStyle BackColor="#F6F0C0" />
                <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
        </div>
        <hr />
        <div>
            <asp:Label ID="lbl_KQ" runat="server" Text=""></asp:Label>
        </div>

    </form>
</body>
</html>
