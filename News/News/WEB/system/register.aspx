<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="News.WEB.system.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <title>用户注册 - 桂航新闻网</title>
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
  <h1 class="h3 mb-3 font-weight-normal">Please Register</h1>
    <br />
  <label for="inputAccount" class="sr-only">Account</label>

  <input type="text" id="inputAccount" name="inputAccount" class="form-control" placeholder="Account" required autofocus/>
    <br />
  <label for="inputPassword" class="sr-only">Password</label>
  <input type="password" id="inputPassword" name="inputPassword" class="form-control" placeholder="Password" required/>

    <br />

    <label class="sr-only">Email address</label>
    <asp:TextBox  runat="server" ID="inputEmail" class="form-control" placeholder="Email address"></asp:TextBox>
  
    <br />
  <label for="inputAccount" class="sr-only">RealName</label>
  <input type="text" id="realname" name="realname" class="form-control" placeholder="RealName" required autofocus/>
    <br />
    <asp:Button ID="user_register" runat="server" Text="Register" class="btn btn-lg btn-primary btn-block" OnClick="user_register_Click"  />
    <br />
    <br />
    <br />
  <p class="mt-5 mb-3 text-muted">&copy; 2020-2021</p>

</form>
     <script src="../../bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>
