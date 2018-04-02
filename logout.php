<?php
setcookie("datauser", "", time()-1, "/");
setcookie("counter", "", time()-1, "/");
session_start();
?>

<?php 
	require_once("dbcontroller.php");
	// require_once("users.php");

	// $user = new User;
	// $user->userFindByLogin('user','password');
	// echo $user->getId();
	// echo $user->getLogin();
	// echo $user->getPassword();
	// echo $user->getEmail();
?>
<?php
session_destroy();
?>

<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Mail</title>
  <link rel="stylesheet" href="/css/style.css">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>

	<script>
		$(document).ready(function(){              // по окончанию загрузки страницы
			$('#logout').click(function(){      // вешаем на клик по элементу с id = example-1
				$(this).load('/logout.php'); 
				
			}) 
		}); 
	</script>


  </head>
  
<body>
	<header>
	<div class="logo"><img src="/images/logo.png"></div>
	<div class="login"><div>
	<a href='/login.php'>Вход</a> | <a href='/register.php'>Регистрация</a>
	</div></div>
	</header>
	
	<div id="wrapper">
	

	<div id="left">
	<ul id="menu">
		<li class="active"><a href="/index.php">Ваши письма</a></li>
		<li><a href="/send.php">Написать письмо</a></li>
	</ul>
	</div>


	<div id="main">
		<div id="mails"><h1>Mail</h1>
		
		вы вышли
		</div>
		
	</div>

	
	</div>
</body>
</html>
