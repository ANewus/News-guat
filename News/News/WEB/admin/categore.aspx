<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="categore.aspx.cs" Inherits="News.WEB.admin.categore" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:2%;">
            <div>
                
      <button type="button" class="btn btn-default btn-lg" onclick="window.location.href='addcategore.aspx'">
  <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 添加分类
</button>
                </div>
            <br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" onrowcommand="GridView1_RowCommand" DataSourceID="SqlDataSource1" style="width:400px;" class="table table-bordered">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:ButtonField CommandName="del" HeaderText="删除" Text="删除"  ButtonType="Image" ImageUrl="~/images/home/shanchu.png"  />
                </Columns>
            </asp:GridView>

            <br />
            
							
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT * FROM [news_categore]"></asp:SqlDataSource>
                          
							
            
        </div>
    </form>
    <script src="../../bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
