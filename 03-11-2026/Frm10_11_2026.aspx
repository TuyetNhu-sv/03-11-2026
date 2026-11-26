<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Frm10_11_2026.aspx.cs" Inherits="_03_11_2026.Frm10_11_2026" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="Content/bootstrap.min.css" rel="stylesheet" "/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                DANH SÁCH CHỨC VỤ
            </h1>
            <div>
            <asp:Repeater ID="RepeaterCV" runat="server">
            
                <ItemTemplate>
                    <div class ="row">
                        <div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                            <img src="images/ca4e7078bf86f5058a7049dc6eebeec6.jpg"  width ="100" />
                        </div>
                        <div class ="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                            <div>
                                Mã chức vụ :   <%# Eval("MaCV") %>
                            </div>
                            <div>
                               Tên chức vụ :   <%# Eval("TenCV") %>
                           </div>
                        </div>
                    </div>
                    <div>
                 <hr />
                 </ItemTemplate>
           </asp:Repeater>
             
            </div>

            <hr />
            <div>
                <h2>
                    DANH SÁCH CHỨC VỤ SD LIST VIEW
                </h2>

                <div>
                    <asp:ListView ID="ListViewCV" runat="server">
                            <ItemTemplate>
                            <div class ="row">
                                <div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                    <img src="images/ca4e7078bf86f5058a7049dc6eebeec6.jpg"  width ="100" />
                                </div>
                                <div class ="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">
                                    <div>
                                        Mã chức vụ :   <%# Eval("MaCV") %>
                                    </div>
                                    <div>
                                       Tên chức vụ :   <%# Eval("TenCV") %>
                                   </div>
                                </div>
                            </div>
                            <div>
                         <hr />
                         </ItemTemplate>
                    </asp:ListView>

                </div>

                <div>
                    <asp:DataPager
                        ID="DataPagerCV"
                        runat="server"
                        PagedControlID="ListViewCV"
                        PageSize="5"
                        OnPreRender="DataPagerCV_PreRender">
                        <Fields>

                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="true" ShowLastPageButton="true" />
                        </Fields>
                    </asp:DataPager>
                </div>

             
            </div>
        </div>
    </form>
</body>
</html>
