<?php session_start(); ?>

<!DOCTYPE html><html><head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Mail</title>
  <link rel="stylesheet" href="/css/style.css">
  </head>
  
<body>
	<header>
	<div class="logo"><img src="/images/logo.png"></div>
	<div class="login"><div><?php 
	if(!empty($_SESSION["login"])){
		echo "Вы вошли, $_SESSION[login] (<a href='/logout.php' id='logout'>Выход</a>)";
	} else {
		echo "<a href='/register.php'>Регистрация</a>";
	}
	?></div></div>
	</header>
	
	<div id="wrapper">
	

	<div id="left">
	<ul id="menu">
		<li class="active"><a href="/index.php">Ваши письма</a></li>
		<li><a href="/send.php">Написать письмо</a></li>
	</ul>
	</div>


	<div id="main">
		<div id="mails"><h1>Login</h1>
		<?php 
	require_once("dbcontroller.php");
	require_once("users.php");

	
	$db_handle = new DBController();
	
	if(isset($_POST[login]) and isset($_POST[password])) {
		$user = new User;
		if($user->userFindByLogin($_POST[login],$_POST[password])){
			$_SESSION["login"] = $_POST["login"];
			echo "Вы вошли<br></br>";
		}else{
			echo "Такая комбинация логина и пароля не найдена<br></br>";
		}
	}

?>
		
		
	<?php 
	if(!isset($_SESSION["login"])){	
	 echo	'<form method="POST">
				<input type="text" value="" name="login" placeholder="логин" required><br>
				<input type="text" value="" name="password" placeholder="пароль" required><br>
				<input type="submit" value="Вход"  class="btn">
			</form>';
	}
	?>
		</div>
		
	</div>

	
	</div>
</body>
</html>