<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebsitePgm.Default" %>

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
     <div class="topnav" id="myTopnav">
  <a href="Home.aspx" class="active">Home</a>
         <br />
         <div style="font-size:23px;margin-right:50px;"class="text-center">
         <asp:Label ID="LabelHeader" runat="server" Text="Label" ForeColor="#99FF99"></asp:Label>
         </div>
</div>
    <form id="form1" runat="server">
        <div class="container jumbotron"style="align-content:center;margin-top:60px;">
            <div style="text-align:center;">
                <asp:Label ID="LabelDefaultPageText1" runat="server" Text="Label">,</asp:Label>
                <br />
                <label for="txtDefault">The text contents will alternatively display here when the page was <a>refreshed.</a> </label>
        </div>

            </div>
    </form>
  <footer class="text-center text-lg-start bg-light text-muted footer"style="margin-top:180px;font-size:26px;">
      <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
             <asp:Label ID="LabelFooter" runat="server"  Text=""></asp:Label>
    
  </div>
        </footer>  
</body>
 
</html>
