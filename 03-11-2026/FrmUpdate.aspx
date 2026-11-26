<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrmUpdate.aspx.cs" Inherits="_03_11_2026.FrmUpdate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-right: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <h1>QUẢN LÝ BỘ PHẬN</h1>
            </div>
            <div class="row">
                <div class ="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                    <h2>DANH SÁCH BỘ PHẬN</h2>
                    <div>
                        <asp:GridView ID="gvBoPhan" runat="server" CellPadding="4" GridLines="None" CssClass="auto-style1" Width="404px" OnSelectedIndexChanged="gvBoPhan_SelectedIndexChanged" ForeColor="#333333" OnRowDeleting="gvBoPhan_RowDeleting">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:CommandField ButtonType="Button" ShowSelectButton="True" SelectText="Edit" />
                                <asp:CommandField SelectText="Remove" ShowDeleteButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" ForeColor="White" Font-Bold="True" />
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
                </div>
                <div class ="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                    <div>
                        <asp:Button ID="btn_New" runat="server" Text="CREATE NEW" OnClick="btn_Them_Click" />
                    </div>
                    <asp:Label ID="lblKQ" runat="server" Text="" style="margin:20px; font-size:20px;"></asp:Label>

                    <asp:Panel ID="PanelBP" runat="server" style="margin-top:30px;">
                       <div style ="margin-bottom:30px">
                           <div>
                               Mã chức vụ:&nbsp; <asp:TextBox ID="txt_MaBP" runat="server"></asp:TextBox>
                           </div>

                           <div>
                              Tên chức vụ: <asp:TextBox ID="txt_TenBP" runat="server"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_TenBP" ErrorMessage="Tên bộ phận không được rỗng !" ForeColor="#993366"></asp:RequiredFieldValidator>
                               <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Lỗi" />
                          </div>
                       </div>
                       <div>
                           <asp:Button ID="btn_Insert" runat="server" Text="INSERT" OnClick="btn_Insert_Click" />
                           <asp:Button ID="btn_Update" runat="server" Text="UPDATE" OnClick="btn_Update_Click" />
                           <asp:Button ID="btn_Cancel" runat="server" Text="CANCEL" />
                       </div>
                    </asp:Panel>
       

                </div>
            </div>
        </div>
    </form>
</body>
</html>
