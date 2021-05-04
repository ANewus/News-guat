<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_operation.aspx.cs" Inherits="News.WEB.admin.user_operation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" style="margin:1%">
        <div>

            <table class="table table-hover" style="width:60%">
                <tr>
                    <td>用户ID</td>
                    <td>用户名</td>
                    <td>用户密码</td>
                    <td>用户邮箱</td>
                    <td>真实姓名</td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                    <td><asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
                </tr>
            </table>
            <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-default dropdown-toggle" >
                                    <asp:ListItem>选择操作</asp:ListItem>
                                    <asp:ListItem>删除用户</asp:ListItem>
                                    <asp:ListItem>重置密码</asp:ListItem>
                                </asp:DropDownList>
								&nbsp;<asp:Button ID="Button1" runat="server"
                                    Text="执行操作" OnClick="Button1_Click" class="btn btn-warning" />
        </div>
    </form>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
