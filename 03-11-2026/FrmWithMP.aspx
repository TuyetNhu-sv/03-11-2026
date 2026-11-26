<%@ Page Title="" Language="C#" MasterPageFile="~/MPUser.Master" AutoEventWireup="true" CodeBehind="FrmWithMP.aspx.cs" Inherits="_03_11_2026.FrmWithMP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div>
       <h1 style="color:saddlebrown">DANH SÁCH NHÂN VIÊN</h1>
       <div>
           Tổng số nhân viên của công ty là: <asp:Label ID="lblDSNV" runat="server" Text=""></asp:Label>
       </div>
       <div>
           <asp:Button ID="btn_Create" runat="server" Text="CREATE" />
       </div>
       <div>
           <asp:ListView ID="ListViewNV" runat="server">
               <ItemTemplate>
                   <div class ="row">
                       <div class="col-4 col-sm-4 col-md-4 col-lg-4 col-xl-4">
                           <img src ="images/ca4e7078bf86f5058a7049dc6eebeec6.jpg" width="100"/>
                       </div>
                       <div class="col-4 col-sm-4 col-md-4 col-lg-4 col-xl-4">
                            <div>
                                Họ tên: <%# Eval("hoTen") %>
                            </div>
                              <div>
                              Giới tính: <%# Eval("gioiTinh") %>
                          </div>
                             <div>
                              Chức vụ: <%# Eval("chucVu") %>
                          </div>
                             <div>
                              Bộ phận: <%# Eval("boPhan") %>
                          </div>
                       </div>
                   </div>
               </ItemTemplate>
           </asp:ListView>
       </div>
   </div>

</asp:Content>
