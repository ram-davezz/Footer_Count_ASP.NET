<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebsitePgm.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet" href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
      <style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

.topnav .icon {
  display: none;
}

@media screen and (max-width: 600px) {
  .topnav a:not(:first-child) {display: none;}
  .topnav a.icon {
    float: right;
    display: block;
  }
}

          @media screen and (max-width: 600px) {
              .topnav.responsive {
                  position: relative;
              }

                  .topnav.responsive .icon {
                      position: absolute;
                      right: 0;
                      top: 0;
                  }

                  .topnav.responsive a {
                      float: none;
                      display: block;
                      text-align: left;
                  }

              .footer {
                  position: absolute;
                  bottom: 0;
                  width: 100%;
                  height: 60px;
                  line-height: 60px;
                  background-color: yellow;
                  padding-top: 60px;
              }
             .container .jumbotron {
                padding:0px 3px;
                }
          
}
</style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="topnav" id="myTopnav">
  <a href="Home.aspx" class="active">Home</a>
  <a href="Login.aspx">Login</a>
  <a href="Default.aspx">Default</a>

</div>
        <div class="container jumbotron ">
            <a><h1>ASP.NET</h1></a>
            <p>ASP.NET is an open-source,[2] server-side web-application framework designed for web development to produce dynamic web pages. It was developed by Microsoft to allow programmers to build dynamic web sites, applications and services.

It was first released in January 2002 with version 1.0 of the .NET Framework and is the successor to Microsoft's Active Server Pages (ASP) technology. ASP.NET is built on the Common Language Runtime (CLR), allowing programmers to write ASP.NET code using any supported .NET language. The ASP.NET SOAP extension framework allows ASP.NET components to process SOAP messages.

ASP.NET's successor is ASP.NET Core. It is a re-implementation of ASP.NET as a modular web framework, together with other frameworks like Entity Framework. The new framework uses the new open-source .NET Compiler Platform (codename "Roslyn") and is cross platform. ASP.NET MVC, ASP.NET Web API, and ASP.NET Web Pages (a platform using only Razor pages) have merged into a unified MVC 6.[3]</p>


        </div>
       
    </form>
    <footer class="text-center text-lg-start bg-light text-muted"style="margin-top:90px;">
      <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
          <asp:Label ID="LabelCounter" runat="server" Text=""></asp:Label>
    
  </div>
        </footer>
</body>
</html>
