<?php 
	require_once("dbcontroller.php");
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
	<div class="login"><div><?php 
	if(!empty($_SESSION["login"])){
		echo "Вы вошли, $_SESSION[login] (<a href='/logout.php' id='logout'>Выход</a>)";
	} else {
		echo "<a href='/login.php'>Вход</a> | <a href='/register.php'>Регистрация</a>";
	}
	?></div></div>
	</header>
	
	<div id="wrapper">
	<div id="left">
	<ul id="menu">
		<li><a href="/index.php">Ваши письма</a></li>
		<li class="active"><a href="/send.php">Написать письмо</a></li>
	</ul>
	</div>
	<div id="main">
		<div id="mails"><h1>Send Mail</h1>
		<?php 
	if(!empty($_SESSION["login"])){
		echo '<form method="POST" action="/sendmail.php">
				<input type="text" value="" name="tems" placeholder="Тема письма" required ><br>
				<input type="text" value="" name="email" placeholder="E-mail получателей (через ;)" required >
				<font size="2">Пример: mail1@gmail.com; mail2@gmail.com</font><br></br>
				<textarea name="message" placeholder="Ваше сообщение" required ></textarea><br>
				<input type="submit" class="btn" value="Отправить">
			</form>';
	} else {
		echo "Войдите или зарегистрируйтесь на сайте!";
	}
	?>	
		</div>
	</div>
	</div>
</body>
</html>