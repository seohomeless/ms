<?php 
	require_once("dbcontroller.php");
	session_start();
	// require_once("users.php");
	// $user = new User;
	// $user->userFindByLogin('user','password');
	// echo $user->getId();
	// echo $user->getLogin();
	// echo $user->getPassword();
	// echo $user->getEmail();
	$db_handle = new DBController();
	$user_id = $db_handle->runQuery("SELECT * FROM users WHERE login='$_SESSION[login]'");
	$idus = $user_id[0][id];
?>


<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Mail</title>
  <link rel="stylesheet" href="/css/style.css">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
</head>
  
<body>
	<header>
	<div class="logo"><img src="/images/logo.png"></div>
	<div class="login"><div>
	<?php 
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
		<li class="active"><a href="/index.php">Ваши письма</a></li>
		<li><a href="/send.php">Написать письмо</a></li>
	</ul>
	</div>


	<div id="main">
		<div id="mails"><h1>Mail</h1>
		<?php if(empty($_SESSION["login"])){
			echo "Войдите на сайт<div style='display:none;'>";
			} 
		?>
		<form method="POST" id="filter">
			<select name="searchmail">
			<option value='all'>Любой</option>
			<?php 
				$email = $db_handle->runQuery("SELECT * FROM mail");
				foreach($email as $value) {
					echo "<option value='$value[mailto]'>$value[mailto]</option>";
				}
			?>
			</select>
			<input type="text" name="dateat" placeholder="дата от">
			<input type="text" name="dateto" placeholder="дата до">
			<input type="submit" value="Фильтр">
		</form>
		
		<table>
		<tr>
			<th class="mail">Email</th>
			<th class="tems">Tems</th>
			<th class="text">Text mails</th>
			<th class="text">Data</th>
		</tr>

	
		<?php 	
			if(isset($_POST[searchmail])) {
				$mail = $_POST[searchmail];
				$date1 = $_POST[dateat];
				$date2 = $_POST[dateto];
				$mail = $db_handle->runQuery("SELECT * FROM mail WHERE mailto='$mail' AND date_send BETWEEN '$date1' AND '$date2'");
				
			
			foreach($mail as $value) {
				echo "<tr>";
				echo "<td>$value[mailto]</td>";
				echo "<td>$value[them]</td>";
				echo "<td>$value[body]</td>";
				echo "<td>$value[date_send]</td>";
				echo "</tr>"; 
			}
			
			} else {
			
			$mail = $db_handle->runQuery("SELECT * FROM mail WHERE sender_id = '$idus' ORDER BY id DESC");
			foreach($mail as $value) {
				echo "<tr>";
				echo "<td>$value[mailto]</td>";
				echo "<td>$value[them]</td>";
				echo "<td>$value[body]</td>";
				echo "<td>$value[date_send]</td>";
				echo "</tr>"; 
			}
			}
			?>	
		</table>	
		</div>	
	</div>
	</div>
	</div>
</body>
</html>