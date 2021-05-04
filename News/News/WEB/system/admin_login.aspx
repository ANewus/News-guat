<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="News.WEB.system.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员登录 - 桂航新闻网</title>
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../../css/signin.css" rel="stylesheet" />
    <link rel="shortcut icon" href="../../images/home/logo.ico" />
      <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

</head>
 <body class="text-center">
    
<form class="form-signin" runat="server">
    <img class="mb-4" src="../../images/home/logo_max.png" alt="桂林航天工业学院" width="150" height="150"/>
  <h1 class="h3 mb-3 font-weight-normal">Administrator Login</h1>
    <br />
  <label for="inputAccount" class="sr-only">Account</label>
  <input type="text" id="inputAccount" name="inputAccount" class="form-control" placeholder="Account" required autofocus/>
    <br />
  <label for="inputPassword" class="sr-only">Password</label>
  <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Password" required/>
  <div class="checkbox mb-3">
    <label>
      <input type="checkbox" value="remember-me"/> Remember me
    </label>
  </div>
    <asp:Button ID="Button1" runat="server" Text="Sign in" class="btn btn-lg btn-primary btn-block" OnClick="Button1_Click1" />

    <br />
    <br />
    <br />
    <br />
  <p class="mt-5 mb-3 text-muted">&copy; 2020-2021</p>

</form>
     <script src="../../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>