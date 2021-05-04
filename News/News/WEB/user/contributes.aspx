<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contributes.aspx.cs" Inherits="News.WEB.user.contributes" %>

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
            <div>
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <button type="button" class="btn btn-default btn-lg" onclick="window.location.href='add_contribute.aspx'">
                    <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>投稿
                </button>
            </div>
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="table table-bordered"
                OnRowCommand="GridView1_RowCommand" DataKeyNames="id" PageSize="18">
                <Columns>

                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False"
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="category" HeaderText="新闻类别" SortExpression="category" />
                    <asp:BoundField DataField="title" HeaderText="新闻标题" SortExpression="title" />
                    <asp:BoundField DataField="author" HeaderText="新闻作者" SortExpression="author" />
                    <asp:BoundField DataField="createTime" HeaderText="发布时间" SortExpression="createTime" />
                    <asp:ButtonField CommandName="xuanze" HeaderText="选择" Text="选择" ButtonType="Image" ImageUrl="~/images/home/xuanze.png" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT [id], [category], [title], [author], [contents], [createTime] FROM [contribute] ORDER BY [createTime] DESC"></asp:SqlDataSource>


        </div>
    </form>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>

</body>
</html>
