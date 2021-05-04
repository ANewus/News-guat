<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_management.aspx.cs" Inherits="News.WEB.admin.user_management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin: 2%;">

            <br />
            <div class="col-lg-6">
                <div class="input-group">
                    <input type="text" class="form-control" id="search" name="search" runat="server" placeholder="输入用户名关键字" />
                    <span class="input-group-btn">
                        <asp:Button ID="Button1" runat="server" Text="搜索"
                            OnClick="Button1_Click" CausesValidation="False" class="btn btn-default" />
                    </span>
                    <span class="input-group-btn">
                        <asp:Button ID="Button2" runat="server" Text="显示全部"
                            OnClick="Button2_Click" CausesValidation="False" class="btn btn-default" />
                    </span>
                </div>
            </div>

            <br />
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="table table-bordered"
                OnRowCommand="GridView1_RowCommand" PageSize="18" DataKeyNames="id">
                <Columns>

                    <asp:BoundField DataField="id" HeaderText="用户id" InsertVisible="False"
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
                    <asp:BoundField DataField="password" HeaderText="用户密码" SortExpression="password" />
                    <asp:BoundField DataField="email" HeaderText="用户邮箱" SortExpression="email" />
                    <asp:BoundField DataField="realname" HeaderText="真实姓名" SortExpression="realname" />
                    <asp:ButtonField CommandName="xuanze" HeaderText="选择" Text="选择" ButtonType="Image" ImageUrl="~/images/home/xuanze.png"/>
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT * FROM [news_user]"></asp:SqlDataSource>


        </div>
    </form>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
