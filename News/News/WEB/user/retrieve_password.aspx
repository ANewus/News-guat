<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="retrieve_password.aspx.cs" Inherits="News.WEB.user.retrieve_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title></title>
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
        <script src="../../js/jquery.min.js"></script>
    <link href="../../css/signin.css" rel="stylesheet" />
</head>
<body>
    <form runat="server" class="form-signin">
        <div>
             <h1 class="h3 mb-3 font-weight-normal">重置密码</h1>
    <br />
            <div class="input-group">
            <span class="input-group-addon">用户名</span>
           
                <asp:TextBox ID="username" runat="server" class="form-control" placeholder="输入用户名" style="width:300px"></asp:TextBox>
        </div>
            <br />
             <div class="input-group">
            <span class="input-group-addon">邮箱</span>
           <asp:TextBox ID="email" runat="server" class="form-control" placeholder="输入邮箱" style="width:300px"></asp:TextBox>
            
        </div>
            <br />
            <div class="input-group">
            <span class="input-group-addon">姓名</span>
           
                <asp:TextBox ID="realname" runat="server" class="form-control" placeholder="输入姓名" style="width:300px"></asp:TextBox>
        </div>
            <br />
<div class="form-group">
    <asp:Button ID="Button1" runat="server" Text="重置密码"  class="btn btn-default" OnClick="Button1_Click1"/>
    </div>
            </div>
        <a href="../../main.aspx" target="_blank">返回首页</a>
        <a href="../system/login.aspx" target="_blank">登陆</a>
    </form>

    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
