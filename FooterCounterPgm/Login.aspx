<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebsitePgm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
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
  .topnav.responsive {position: relative;}
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

}
</style>
</head>
<body>
   <div class="topnav" id="myTopnav">
   <a href="Home.aspx" class="active">Home</a>

</div>



    <form id="form1" runat="server">
       <div class="container jumbotron" style="font-family:'Lucida Sans'; max-width: 500px;align-content:center;border-radius:30px;margin-top:20px;">
    <a><h1 class="form-signin-heading text-center">
        LOGIN</h1></a>
    <label for="txtUsername">
        Username</label>
    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter Username"
        required />
    <br />
    <label for="txtPassword">
        Password</label>
      <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"
        placeholder="Enter Password"  required />
         
           
    <asp:Button ID="LoginBtn" runat="server" CssClass="btn btn-success" Text="Login" OnClick="Login_Click"  />
    <div id="dvMessage" runat="server" visible="true" class="alert alert-danger">
        <strong></strong>
        <asp:Label ID="lblMessage" runat="server" /> 
    </div>
            
</div>
       
    </form>
     <footer class="text-center text-lg-start bg-light text-muted footer"style="margin-top:80px;">
      <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
          <asp:Label ID="LabelCountter" runat="server" Text="label"></asp:Label>
    
  </div>
            
        </footer>
   
</body>

</html>
