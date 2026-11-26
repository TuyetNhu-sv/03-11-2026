<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm7.aspx.cs" Inherits="_03_11_2026.Frm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>DANH SÁCH NHÂN VIÊN </h1>
        </div>
        <div>
            <asp:GridView ID="GridView_NhanVien" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="229px" Width="357px" CellSpacing="1" OnSelectedIndexChanged="GridView_NhanVien_SelectedIndexChanged" AllowPaging="True" EnableSortingAndPagingCallbacks="True">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ButtonType="Button" SelectText="Chọn" ShowSelectButton="True" />
                    <asp:BoundField DataField="hoTen" HeaderText="Họ tên NV" />
                    <asp:BoundField DataField="gioiTinh" HeaderText="Giới tính" />
                    <asp:BoundField DataField="luong" HeaderText="Lương" />
                    <asp:BoundField DataField="bophan" HeaderText="Bộ phận" />
                    <asp:BoundField DataField="chucvu" HeaderText="Chức vụ" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>

        <hr />

        <div>
            <h2> DANH SÁCH BỘ PHẬN </h2>
            <p> 
                <asp:GridView ID="GridView_boPhan" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="205px" OnSelectedIndexChanged="GridView_boPhan_SelectedIndexChanged" Width="391px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" SelectText="Chọn" ShowSelectButton="True" />
                        <asp:BoundField DataField="MaBP" HeaderText="Mã Bộ Phận" />
                        <asp:BoundField DataField="TenBP" HeaderText="Tên Bộ Phận" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </p>
        </div>

    <div>
    </div>
        <hr />

    <div>
        <asp:Label ID="lbl_KQ" runat="server" Text=""></asp:Label>
    </div>
        <div>
            
           <h1>DANH SÁCH NHÂN VIÊN THEO BỘ PHẬN</h1>
               </div>
        <div>
            <asp:GridView ID="GridView_InBP" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
