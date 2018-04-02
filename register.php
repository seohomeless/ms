<?php 
	require_once("dbcontroller.php");
	require_once("users.php");
	session_start();
?>
<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Mail</title>
  <link rel="stylesheet" href="/css/style.css">
  </head>
  
<body>
	<header>
	<div class="logo"><img src="/images/logo.png"></div>
	<div class="login"><div>
	<?php 
	if(isset($_SESSION["login"])){
		echo "Вы вошли, $_SESSION[login] (<a href='/logout.php'>Выход</a>)";
	} else {
		echo "<a href='/login.php'>Вход</a>";
	}
	?>
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
		<div id="mails"><h1>Register</h1>
		
		<?php 
		// регистрация пользователя
			$db_handle = new DBController();
			$res = $db_handle->runQuery("SELECT * FROM users WHERE login='$_POST[login]'");
			if($res) {
				echo "<h3 style='color: red'>такой пользователь существует.</h3>";		
			} elseif(filter_var($_POST[mail], FILTER_VALIDATE_EMAIL)) {
				if (isset($_POST[login]) and isset($_POST[password])) {	
					$db_handle = new DBController();
			 		$db_handle->newquery("INSERT INTO users (login, password, mail) VALUES ('$_POST[login]','$_POST[password]','$_POST[mail]')");
					echo "<h3 style='color: green'>Вы зарегестриорванны</h3>";
				$_SESSION["login"] = $_POST["login"];
				}
			} elseif($_POST["login"]) {
				echo "<h3 style='color: red'>почта не правильна.</h3>";
			}
		?>

	<?php 
	if(!isset($_SESSION["login"])){	
	 echo	'<form method="POST" action="">
			<input type="text" value="" name="login" placeholder="логин" required><br>
			<input type="text" value="" name="password" placeholder="пароль" required><br>
			<input type="text" value="" name="mail" placeholder="email" required><br>
			
			<input type="submit" value="Регистрация" class="btn">
		</form>';
	} ?>
	</div>	
	</div>
	</div>
</body>
</html>
