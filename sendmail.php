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
	
			$mailget = $_POST[email];
			$mailstr = explode("; ", $mailget);
			$colmailstr	= count($mailstr);
	
?>


<?php 
$geo =  unserialize(file_get_contents('http://www.geoplugin.net/php.gp?ip='.$_SERVER['REMOTE_ADDR']));
$post = "$_POST[message], Координаты: $geo[geoplugin_latitude], $geo[geoplugin_longitude]";
?>



<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Mail</title>
  <link rel="stylesheet" href="/css/style.css">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
  
  
  
  
<style>
   progress {
	border:0;
	width: 300px;
	height: 20px;
	border-radius: 10px;
	background: #f1f1f1;
	}
	progress::-webkit-progress-bar {
	width: 300px;
	height: 20px;
	border-radius: 10px;
	background: #f1f1f1;
	}
	progress::-webkit-progress-value {
	border-radius: 10px;
	background: #ffb76b;
	}
	progress::-moz-progress-bar {
	border-radius: 5px;
	background: #ffb76b;
	}
  </style>
  
<script>
function getProgress(){
document.getElementById('progress').value++;
}

</script>
 
  
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
		<div id="mails"><h1>Send Mail</h1>
		

			<progress id="progress" value="0" max="<?php echo "$colmailstr"; ?>"></progress>
			</br>
		<?php 
			session_start();
			require_once("dbcontroller.php");
			$db_handle = new DBController();
			$user_id = $db_handle->runQuery("SELECT * FROM users WHERE login='$_SESSION[login]'");
			$idus = $user_id[0][id];
			
			
			if(isset($_POST[message]) and isset($_POST[email]) and isset($_POST[tems])) {
			$data = date("Y.d.m H:i:s");
			
			foreach($mailstr as $key=>$val){ 
				mail($val, $_POST[tems], $post);
				echo "<br>Письмо $key отправленно <script> getProgress();</script>";
				$db_handle->newquery("INSERT INTO `mail` (`sender_id`, `them`, `body`, `mailto`, `date_send`) VALUES ('$idus', '$_POST[tems]', '$_POST[message]', '$val', '$data');");
				
				
				} 
			}
			
			else {
				echo "<h3 style='color: red'>Что то пошло не так</h3>";
			}

		?>	
		</br>
		</div>	
	</div>
	</div>
	</div>
</body>
</html>