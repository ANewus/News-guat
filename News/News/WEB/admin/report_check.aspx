<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="report_check.aspx.cs" Inherits="News.WEB.admin.report_check" %>

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
            <div class="col-lg-6">
                <div class="input-group">
                    <input type="text" class="form-control" id="search" name="search" runat="server" placeholder="输入新闻标题关键字" />
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

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                AutoGenerateColumns="False" DataSourceID="SqlDataSource1" class="table table-bordered"
                OnRowCommand="GridView1_RowCommand" DataKeyNames="newsid" PageSize="18">
                <Columns>

                    <asp:BoundField DataField="id" HeaderText="举报id" InsertVisible="False"
                        ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="newsid" HeaderText="新闻id" SortExpression="newsid" />
                    <asp:BoundField DataField="title" HeaderText="新闻标题" SortExpression="title" />
                    <asp:BoundField DataField="contents" HeaderText="举报内容" SortExpression="contents" />
                    <asp:BoundField DataField="reportTime" HeaderText="举报时间" SortExpression="reportTime" />
                    <asp:ButtonField CommandName="pass" HeaderText="通过举报(删除该新闻)" Text="通过" ButtonType="Image" ImageUrl="~/images/home/pass.png"/>
                    <asp:ButtonField CommandName="chakan" Text="查看此新闻" HeaderText="查看此新闻" ButtonType="Image" ImageUrl="~/images/home/chakan.png" />
                    <asp:ButtonField CommandName="rdel" Text="删除该举报" HeaderText="删除该举报" ButtonType="Image" ImageUrl="~/images/home/nopass.png"/>
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT * FROM [report]"></asp:SqlDataSource>


        </div>
    </form>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
