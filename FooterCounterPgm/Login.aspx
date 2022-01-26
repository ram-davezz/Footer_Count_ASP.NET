<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebsitePgm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
 <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">
 <link href="css/bootstrap.min.css" rel="stylesheet"/>
 <link rel="stylesheet" href="fonts/style.css">
 <link rel="stylesheet" href="css/owl.carousel.min.css">
 <link rel="stylesheet" href="css/style.css">

  
    <style>
        body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-color:#cff9de;
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
    </style>
</head>
<body>
   <div class="topnav" id="myTopnav">
   <a href="Home.aspx" class="active">Home</a>
       </div>
 <div class="content">
    <div class="container">
      <div class="row justify-content-center">
        <!-- <div class="col-md-6 order-md-2">
          <img src="images/undraw_file_sync_ot38.svg" alt="Image" class="img-fluid">
        </div> -->
        <div class="col-md-6 contents">
          <div class="row justify-content-center">
            <div class="col-md-12">
              <div class="form-block">
                  <div class="mb-4">
                  <h3>Sign In to <strong>Admin Panel.</strong></h3>
                      <br />
                </div>
                <form id="form1" runat="server">
                  <div class="form-group first">
                    <label for="username">Username</label>
                   <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control"></asp:TextBox>

                  </div>
                  <div class="form-group last mb-4">
                    <label for="password">Password</label>
                   
                     <asp:TextBox ID="TxtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    
                  </div>
                    <br />
        <br />
                  <asp:Button ID="ButtonLogin" runat="server" Cssclass="btn btn-pill text-white btn-block btn-primary" Text="Login" OnClick="ButtonLogin_Click" />
        <br />
      
                  <span class="d-block text-center my-4 text-muted"> <asp:Label ID="lblMessage" runat="server" Text="" style="color:orangered;"></asp:Label></span>
                  
                  
                </form>
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
    </div>
  </div> 

      <footer class="text-center text-lg-start bg-light text-muted footer"style="margin-top:80px;">
      <div class="text-center p-4" style="background-color:#c8c3c3;">
          <asp:Label ID="LabelCountter" runat="server" Text=""></asp:Label>
          </div>
          </footer>
       
     <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
   
</body>

</html>
