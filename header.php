<?php 
	session_start();
	define('MINE',dirname(__FILE__)); 							//	//dossier racine du site
	define('ROOT',dirname(MINE)); 								// monter enconre d'un cran et sauver dans une constante
	define('DS',DIRECTORY_SEPARATOR); 								// sauver dans une constante les separateur / ou \ selon le systeme
	define('MOTOR',MINE.DS.'motor'); 									//lien vers le dossier core
	define('BASE_URL', dirname(dirname($_SERVER['SCRIPT_NAME'])));
	define('WEBROOT',MINE.DS.'webroot'); 
	require MOTOR.DS.'includes.php';

?>

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
Personnalisation : Toavina Ralambosoa
-->

<!DOCTYPE HTML>
<html>
<head>
<title>Gretong a Ecommerce Category Flat Bootstarp Responsive Website Template | Home :: w3layouts</title>
<link href="webroot/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary JavaScript plugins) -->
<script type='webroot/text/javascript' src="js/jquery-1.11.1.min.js"></script>
<!-- Custom Theme files -->
<link href="webroot/css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Playfair+Display:400,700,900' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="webroot/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="webroot/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="webroot/js/menu_jquery.js"></script>
<script src="webroot/js/jquery.etalage.min.js"></script>
<script src="webroot/js/simpleCart.min.js"> </script>
<script>
	jQuery(document).ready(function($){

		$('#etalage').etalage({
			thumb_image_width: 300,
			thumb_image_height: 400,
			source_image_width: 900,
			source_image_height: 1200,
			show_hint: true,
			click_callback: function(image_anchor, instance_id){
				alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
			}
		});

	});
</script>
</head>
<body>
<!-- header_top -->
<div class="top_bg">
	<div class="container">
		<div class="header_top">
			<div class="top_right">
				<ul>
					<li><a href="#">aide</a></li>|
					<li><a href="contact.html">Contact</a></li>|
					<li><a href="#">Delivery information</a></li>
				</ul>
			</div>
			<div class="top_left">
				<h2><span></span> Contactez-nous au : 032 23 527 82</h2>
			</div>
				<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!-- header -->
<div class="header_bg">
<div class="container">
	<div class="header">
	<div class="head-t">
		<div class="logo">
			<a href="index.php"><img src="webroot/images/logo.png" class="img-responsive" alt=""/> </a>
		</div>
		<!-- start header_right -->
		<div class="header_right">
			<div class="rgt-bottom">
				<div class="log">
					<div class="login" >
						<div id="loginContainer"><a href="#" id="loginButton"><span>Coex</span></a>
						    <div id="loginBox">                
						        <form id="loginForm">
						                <fieldset id="body">
						                	<fieldset>
						                          <label for="email">Adresse email</label>
						                          <input type="text" name="email" id="email">
						                    </fieldset>
						                    <fieldset>
						                            <label for="password">mot de passe</label>
						                            <input type="password" name="password" id="password">
						                     </fieldset>
						                    <input type="submit" id="login" value="Se connecter">
						                	<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Se souvenir de moi</i></label>
						            	</fieldset>
						            <span><a href="#">Mot de passe oublié?</a></span>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="reg">
					<a href="register.html">S'inscrire</a>
				</div>
							<div class="cart box_1">
				<a href="checkout.php">
					<h3> <span class="simpleCart_total">$0.00</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">0</span> produits)<img src="webroot/images/bag.png" alt=""></h3>
				</a>	
				<p><a href="javascript:;" class="simpleCart_empty">(Panier vide)</a></p>
				<div class="clearfix"> </div>
			</div>
			<div class="create_btn">
				<a href="checkout.php">CHECKOUT</a>
			</div>
			<div class="clearfix"> </div>
		</div>
		<div class="search">
		    <form>
		    	<input type="text" value="" placeholder="recherche...">
				<input type="submit" value="">
			</form>
		</div>
		<div class="clearfix"> </div>
		</div>
		<div class="clearfix"> </div>
	</div>
		<!-- start header menu -->
		<ul class="megamenu skyblue">
			<li class="active grid"><a class="color1" href="index.php">Accueil</a></li>
			<li class="grid"><a class="color2" href="#">new arrivals</a>	
			<li><a class="color4" href="#">TUXEDO</a>					
			<li><a class="color5" href="#">SWEATER</a></li>
			<li><a class="color6" href="#">SHOES</a></li>				
			<li><a class="color7" href="#">GLASSES</a></li>				
			<li><a class="color8" href="#">T-SHIRT</a></li>
			<li><a class="color9" href="#">WATCHES</a></li>
		 </ul> 
	</div>
</div>
</div>