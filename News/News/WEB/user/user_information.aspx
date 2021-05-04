<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_information.aspx.cs" Inherits="News.WEB.user.user_information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <script src="../../js/jquery.min.js"></script>
</head>
<body>
    <form runat="server" style="margin:2%">
        <div>
        <table class="table table-hover" style="width:30%">

     
               
                    <tr>
                        <td>用户名：</td>
                        <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>邮箱：</td>
                        <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>真实姓名：</td>
                        <td><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
                    </tr>
                
       </table>
            <div class="input-group">
            <span class="input-group-addon">邮箱</span>
           
                <asp:TextBox ID="email" runat="server" class="form-control" placeholder="需要更改的邮箱" style="width:300px"></asp:TextBox>
        </div>
            <br />
             <div class="input-group">
            <span class="input-group-addon">姓名</span>
           <asp:TextBox ID="realname" runat="server" class="form-control" placeholder="需要更改的姓名" style="width:300px"></asp:TextBox>
            
        </div>
            <br />
<div class="form-group">
    <asp:Button ID="Button1" runat="server" Text="确认更新" OnClick="Button1_Click1" class="btn btn-default"/>
    </div>
            </div>
    </form>

    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
