<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfmLogin.aspx.cs" Inherits="LoginGit.Web.Formularios.WfmLogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V15</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../Plantilla/PlaLogin/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/css/util.css">
	<link rel="stylesheet" type="text/css" href="../Plantilla/PlaLogin/css/main.css">
<!--===============================================================================================-->
</head>
<body>
<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(../Plantilla/PlaLogin/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign In
					</span>
				</div>

				<form class="login100-form validate-form" runat="server">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Username</span>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="input100" TextMode="Email"></asp:TextBox>
						<%--<input class="input100" type="text" name="username" placeholder="Enter username">--%>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
                        <asp:TextBox ID="txtPassword" runat="server" CssClass="input100"></asp:TextBox>
						<%--<input class="input100" type="password" name="pass" placeholder="Enter password">--%>
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
							<label class="label-checkbox100" for="ckb1">
								Remember me
							</label>
						</div>

						<div>
							<a href="#" class="txt1">
								Forgot Password?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
                    <asp:Button ID="BtnIngresar" runat="server" Text="Ingresar" CssClass="login100-form-btn" OnClick="BtnIngresar_Click"/>	
					<%--	<button class="login100-form-btn">
		Login
	</button>--%>
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="../Plantilla/PlaLogin/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../Plantilla/PlaLogin/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../Plantilla/PlaLogin/vendor/bootstrap/js/popper.js"></script>
	<script src="../Plantilla/PlaLogin/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../Plantilla/PlaLogin/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../Plantilla/PlaLogin/vendor/daterangepicker/moment.min.js"></script>
	<script src="../Plantilla/PlaLogin/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../Plantilla/PlaLogin/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../Plantilla/PlaLogin/js/main.js"></script>



</body>
</html>
