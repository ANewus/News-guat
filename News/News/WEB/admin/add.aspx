<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="News.WEB.admin.add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>添加新闻</title>
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       <div style="margin:3%;">
           <div class="input-group">
            <span class="input-group-addon">新闻标题</span>
            <input type="text" id="title" name="title" class="form-control" placeholder="标题" runat="server" style="width:400px"/>
        </div>
           <br />
        <div class="input-group">
            <span class="input-group-addon">新闻类型</span>
            <asp:DropDownList ID="DropDownList1" runat="server" style="width:150px" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" class="btn btn-default dropdown-toggle">
            </asp:DropDownList>
        </div>
           <br />
           <div class="input-group">
            <span class="input-group-addon">新闻作者</span>
            <input type="text"  id="author" name="author" class="form-control" placeholder="作者" runat="server" style="width:200px"/>
        </div>
           <br />
       <div class="form-group">
           <label>新闻内容：</label>
     
        <asp:TextBox ID="txtEditorContents" name="txtEditorContents" runat="server" TextMode="MultiLine" Height="400px" Width="1000px" ClientIDMode="Static "> </asp:TextBox>
            
        </div>
<div class="form-group">
           <asp:Button ID="Button1" runat="server" Text="添加" class="btn btn-default" OnClick="Button1_Click"/>
    </div>
     </div>
    </form>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:news %>" SelectCommand="SELECT [name] FROM [news_categore]"></asp:SqlDataSource>
         

    <script src="../../bootstrap/js/bootstrap.min.js"></script>
    <script src="../../js/jquery.min.js"></script>
    
    <script type="text/javascript" charset="utf-8" src="../../Content/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../Content/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../../Content/ueditor/lang/zh-cn/zh-cn.js"></script>
      <script type="text/javascript">
   
           //实例化编辑器
           //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
           var ue = UE.getEditor('txtEditorContents');
           
   
           function isFocus(e) {
               alert(UE.getEditor('editor').isFocus());
              UE.dom.domUtils.preventDefault(e)
          }
          function setblur(e) {
              UE.getEditor('editor').blur();
              UE.dom.domUtils.preventDefault(e)
          }
          function insertHtml() {
              var value = prompt('插入html代码', '');
              UE.getEditor('editor').execCommand('insertHtml', value)
          }
          function createEditor() {
              enableBtn();
              UE.getEditor('editor');
          }
          function getAllHtml() {
              alert(UE.getEditor('editor').getAllHtml())
          }
          function getContent() {
              var arr = [];
              arr.push("使用editor.getContent()方法可以获得编辑器的内容");
              arr.push("内容为：");
              arr.push(UE.getEditor('editor').getContent());
              alert(arr.join("\n"));
          }
          function getPlainTxt() {
              var arr = [];
              arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
              arr.push("内容为：");
              arr.push(UE.getEditor('editor').getPlainTxt());
              alert(arr.join('\n'))
          }
          function setContent(isAppendTo) {
              var arr = [];
              arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
              UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
              alert(arr.join("\n"));
          }
          function setDisabled() {
              UE.getEditor('editor').setDisabled('fullscreen');
              disableBtn("enable");
          }
  
          function setEnabled() {
              UE.getEditor('editor').setEnabled();
              enableBtn();
          }
  
          function getText() {
              //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
              var range = UE.getEditor('editor').selection.getRange();
              range.select();
              var txt = UE.getEditor('editor').selection.getText();
              alert(txt)
          }
  
          function getContentTxt() {
              var arr = [];
              arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
              arr.push("编辑器的纯文本内容为：");
              arr.push(UE.getEditor('editor').getContentTxt());
              alert(arr.join("\n"));
          }
          function hasContent() {
              var arr = [];
              arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
              arr.push("判断结果为：");
              arr.push(UE.getEditor('editor').hasContents());
              alert(arr.join("\n"));
          }
          function setFocus() {
              UE.getEditor('editor').focus();
          }
          function deleteEditor() {
              disableBtn();
             UE.getEditor('editor').destroy();
         }
         function disableBtn(str) {
             var div = document.getElementById('btns');
             var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
            for (var i = 0, btn; btn = btns[i++];) {
                 if (btn.id == str) {
                     UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
                 } else {
                     btn.setAttribute("disabled", "true");
                 }
             }
         }
         function enableBtn() {
             var div = document.getElementById('btns');
             var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
             for (var i = 0, btn; btn = btns[i++];) {
                 UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
             }
         }
 
         function getLocalData() {
             alert(UE.getEditor('editor').execCommand("getlocaldata"));
        }

         function clearLocalData() {
             UE.getEditor('editor').execCommand("clearlocaldata");
             alert("已清空草稿箱")
         }
</script>
</body>
</html>
