<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebsitePgm.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Page</title>
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
  padding: 10px 16px;
  text-decoration: none;
  font-size: 17px;
}
.topnav button{
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
.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  color: #f2f2f2;
  background-color: #333;
  color: white;
  text-align: center;
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
}
</style>
</head>
<body>
     

    <form id="form1" runat="server">
         <div class="topnav" id="myTopnav">
  
 <a><asp:Button ID="Button2" runat="server" Text="Home" Class="btn btn-lg" OnClick="Button2_Click" /></a>
   
  <a style="float:right;" ><asp:Button ID="Button1" runat="server" Text="Logout" Class="btn btn-danger btn-lg" OnClick="Button1_Click" /></a>
  
</div>
      <div class="container jumbotron" style="max-width: 500px;align-content:center;border-radius:30px;margin-top:60px;">
    <a><h2 class="form-signin-heading text-center" style="font-size: 32px; background-color: #009933; color: #FFFFFF; font-family: Constantia;">
        ADMIN PANEL</h2></a>
    <label for="txtDefault">
        Default Text</label>
    <asp:TextBox ID="txtDefault" runat="server" CssClass="form-control" placeholder="Enter Text"
        required />
    
           <label for="txtHeader">
        Header Text</label>
    <asp:TextBox ID="txtHeader" runat="server" CssClass="form-control" placeholder="Enter Header"
        required />
   
           <label for="txtFooter">
        Footer Text</label>
    <asp:TextBox ID="txtFooter" runat="server" CssClass="form-control" placeholder="Enter Footer"
        required />
          <asp:Button ID="ButtonSave" runat="server" Text="Save Settings" CssClass="btn btn-info" OnClick="ButtonSave_Click" />

    
    
    <div id="dvMessage" runat="server" visible="false" class="alert alert-danger">
        <strong>Error!</strong>
        <asp:Label ID="lblMessage" runat="server" />
    </div>
</div>
    </form>
   <footer class="text-center text-lg-start bg-light text-muted"style="margin-top:140px;">
      <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
          <asp:Label ID="LabelCounterADmin" runat="server" Text="Label"></asp:Label>
  </div>
        </footer>
</body>
</html>
