<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="change_password.aspx.cs" Inherits="News.WEB.user.change_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                    
                
       </table>
            <div class="input-group">
            <span class="input-group-addon">旧密码</span>
           
                <asp:TextBox ID="oldpwd" runat="server" class="form-control" placeholder="输入旧密码" style="width:300px"></asp:TextBox>
        </div>
            <br />
             <div class="input-group">
            <span class="input-group-addon">新密码</span>
           <asp:TextBox ID="newpwd" runat="server" class="form-control" placeholder="输入新密码" style="width:300px"></asp:TextBox>
            
        </div>
            <br />
<div class="form-group">
    <asp:Button ID="Button1" runat="server" Text="确认修改" OnClick="Button1_Click1" class="btn btn-default"/>
    </div>
            </div>
        <a href="retrieve_password.aspx" target="_blank">忘记旧密码？去找回</a>
    </form>

    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
