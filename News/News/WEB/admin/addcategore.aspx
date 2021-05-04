<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addcategore.aspx.cs" Inherits="News.WEB.admin.addcategore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:3%;">
             <div class="input-group">
            <span class="input-group-addon">新的分类</span>
            <input type="text" id="categore" name="categore" class="form-control" placeholder="新闻类别" runat="server" style="width:400px"/>
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="添加" class="btn btn-default" OnClick="Button1_Click"/>
        </div>
    </form>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
