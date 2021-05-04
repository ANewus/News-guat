<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="checktougao.aspx.cs" Inherits="News.WEB.admin.checktougao" %>

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
            <div class="row">
                <div class="col-md-3">
                    <input type="text" class="form-control" id="search" name="search" runat="server" placeholder="输入关键字" style="width: 100%" />
                </div>
                <div class="col-md-1">
                    <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-default dropdown-toggle" Width="100px">
                        <asp:ListItem>按标题</asp:ListItem>
                        <asp:ListItem>按类别</asp:ListItem>
                        <asp:ListItem>按投稿人</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="col-md-1">
                    <span class="input-group-btn">
                        <asp:Button ID="Button1" runat="server" Text="搜索"
                            OnClick="Button1_Click" CausesValidation="False" class="btn btn-primary" Width="100%" />
                    </span>
                    <span class="input-group-btn">
                        <asp:Button ID="Button2" runat="server" Text="显示全部"
                            OnClick="Button2_Click" CausesValidation="False" class="btn btn-info" Width="100%" />
                    </span>
                </div>
                <div class="col-md-1">
                </div>
                <div class="col-md-4"></div>
                <div class="col-md-2"></div>
            </div>
            <br />
            <br />
            <br />

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="table table-bordered"
                OnRowCommand="GridView1_RowCommand" PageSize="18" DataKeyNames="id">
                <Columns>

                    <asp:BoundField DataField="id" HeaderText="稿件ID" InsertVisible="False"
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="username" HeaderText="投稿人" SortExpression="username" />
                    <asp:BoundField DataField="category" HeaderText="新闻类别" SortExpression="category" />
                    <asp:BoundField DataField="title" HeaderText="新闻标题" SortExpression="title" />
                    <asp:BoundField DataField="author" HeaderText="新闻作者" SortExpression="author" />
                    <asp:BoundField DataField="createTime" HeaderText="投稿时间" SortExpression="createTime" />
                    <asp:ButtonField CommandName="xuanze" HeaderText="选择" Text="选择" ButtonType="Image" ImageUrl="~/images/home/xuanze.png"/>
                    <asp:ButtonField CommandName="ddel" Text="删除" HeaderText="删除"   ButtonType="Image" ImageUrl="~/images/home/shanchu.png" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT [id], [username], [category], [title], [author], [createTime] FROM [contribute]"></asp:SqlDataSource>


        </div>
    </form>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
