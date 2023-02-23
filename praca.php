<!-- <?xml version="1.0" encoding="UTF-8"?> -->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<title>Praca zaliczeniowa</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- webhint powiedział że dla responsywności -->
		<!-- domyślnie są to type="text/javascript" -->
		<link href="styl.css" rel="stylesheet" />
		<style>
		input {margin: 20px; width: 70px;}
		</style>
		<link href="favicon-120x120.png" type="image/png" rel="icon" sizes="120x120" />
	</head>
	<body>
	<header>
	<?php include('menu.html'); ?>
	</header>
	<br />
	<p><a href="praca.txt">Kod źródłowy</a>, <a href="praca.html">wersja bez PHP</a>. </p>
	<div>
	<div style="background-color: #dbdb41; width: 100px;">
	<form action="praca.php" method="post">
		<label>Login </label><input type="text" title="Nazwa użytkonika bazy danych" placeholder="kanclerz" name="login" id="login" size="25" maxlength="50" autocomplete="username"/><br />
		<label>Hasło </label><input type="password" name="haslo" title="Hasło użytkownika bazy danych" id="haslo" size="25" maxlength="50" autocomplete="current-password"/><br />
	<input type="submit" name="log" value="Zaloguj"/>
	</form>
	</div>
<?php 
		// require "dbconnect.php"; 
		$conn = new mysqli(); //zmienna globalna
		if(isset($_POST["login"])&&isset($_POST["haslo"]))
		{
			if(empty($_POST["login"]))
			{
				echo "<p>Proszę wpisać nazwę użytkownika.</p>";
				exit();
			}
			if($_POST["haslo"]!="Kasz4te!lan%")
			{
				echo "<p>Nieprawidłowe hasło.</p>";
			}
			try
			{
				
				//$conn = new mysqli("localhost:3306",$_POST["login"],$_POST["haslo"],"student");
				$conn = new mysqli("localhost:3306","dziekan","Kasz4te!lan%","student");
				//$conn = mysqli_connect("localhost:3306","dziekan","Kasz4te!lan%","student");
				//podejście obiektowe, aha
				//poniższe z php.net
				if (!$conn) {
    die('mysqli_init failed');
	exit();
}

if (!mysqli_options($conn, MYSQLI_INIT_COMMAND, 'SET AUTOCOMMIT = 0')) {
    die('Setting MYSQLI_INIT_COMMAND failed');
	exit();
}

if (!mysqli_options($conn, MYSQLI_OPT_CONNECT_TIMEOUT, 5)) {
    die('Setting MYSQLI_OPT_CONNECT_TIMEOUT failed');
	exit();
}

				if($conn->connect_error){
				echo "<p>Nie można się połaczyć z serwerem.</p>";
				throw new Exception($conn->connect_error);
				die('('.mysqli_connect_errno().') '.$conn->connect_error);}
				echo "<p>Zalogowano pomyślnie!</p> ";//podczas logowania wywala błąd 500
				echo mysqli_get_host_info($conn) . "\n";
				//z wyszukiwania w necie: chodzi o plugin unix_socket
			$conn->set_charset("utf8");
		$conn->query("use student");	
		$sql = "select * from student";
			$wynik=$conn->query($sql);
			$ile = $wynik->num_rows;

		if($ile>0)
			{
				while($row=mysqli_fetch_assoc($wynik))//tu już proceduralne
				{
					echo "\r\n<p>".$row["ID"]."\t";
					echo $row["imię"]."\t";
					echo $row["nazwisko"]."\t";
					echo $row["wiek"]."</p>"."<hr />";
				}
				
				
				
				
			}
			else
			{
				echo "<p>W tabeli brak danych.</p>";
			}

			$conn->close();
			}
			catch(Exception $error)
			{
				echo "<p>Nastąpiły problemy.</p>";
				exit();
			}
		} 
		else
		{
			echo "<p>Zmienne niezainicjowane.</p>";
		}
?>
	<div style="background-color: #dbdb41; width: 500px;">
	<form action="praca.php" method="post">
		<label>Imię</label><input type="text" name="imie" title="Imię dodawanego studenta" placeholder="Dërsla" id="imie" size="25" maxlength="50" spellcheck="true" />
		<label>Nazwisko</label><input type="text" name="nazwisko" id="nazwisko" title="Nazwisko dodawanego studenta" placeholder="Schläppi-Hübner" size="25" maxlength="50" spellcheck="true"/>
		<label>Wiek</label><input type="text" name="wiek" id="wiek" title="Wiek dodawanego studenta" placeholder="23" size="3" minlength="2" maxlength="3"/>
	<input type="submit" name="add" value="Dodaj"/>
	</form>
	
	<?php 
	
	if(isset($_POST["imie"]))
		{
			if(empty($_POST["imie"])||empty($_POST["nazwisko"])||empty($_POST["wiek"]))
			{ echo "<p>Zabrakło danych.</p>";
				exit();//ten blok działa
			}
			try{
			//$conn = new mysqli("localhost:3306",$_POST["login"],$_POST["haslo"],"student");
				/*$conn = new mysqli("localhost:3306","dziekan","Kasz4te!lan%","student");
				if($conn->connect_error){
				echo "<p>Nie można się połaczyć z serwerem.</p>";
				throw new Exception($conn->connect_error);
				die($conn->connect_error);}
			mysqli_set_charset($conn, "utf8");*/
			/*$wzor1 = "[/A-ZÄÖẞÜŻŹĄĘŚĆŃŁÙÔÓÒËÉÃČŠŲĮŪŽŌŎ/{1}/a-z".strtolower("ÄÖẞÜŻŹĄĘŚĆŃŁÙÔÓÒËÉÃČŠŲĮŪŽŌŎ")."/{1,49}]u";//słowo
			$wzor2 = "<(".$wzor1."){1}[-(".$wzor1.")]*>u";//dwuczłonowe nazwisko
			$wzor3 = "/1-9/{1}/0-9/{1,2}";//liczba conajmniej dwucyfrowa
			if(preg_match($wzor1, $_POST["imie"])==0)
			{
				echo "<p>Nieprawidłowe imię.</p>";
				exit();
			}
			if(preg_match($wzor2, $_POST["nazwisko"])==0)
			{
				echo "<p>Nieprawidłowe nazwisko (góra dwuczłonowe).</p>";
				exit();
			}
			if(preg_match($wzor3, $_POST["wiek"])==0)
			{
				echo "<p>Nieprawidłowy wiek.</p>";
				exit();
			}*/
			$sql = "insert into student (imię, nazwisko, wiek) values ('".$_POST["imie"]."'".",'".$_POST["nazwisko"]."'".",".$_POST["wiek"].")";
			$wynik=$conn->query($sql);
			$conn->close();
			}
			catch(Exception $error)
			{
				echo "<p>Nastąpiły problemy.</p>";
				exit();
			}
		}
		else
		{
			echo "<p>Zmienne niezainicjowane.</p>";
		}		
	?>
	
	<!-- udaje, że tego bloku nie ma -->
	</div>
	<br />
	<div style="background-color: #dbdb41; width: 100px;">
	<form action="praca.php" method="post">
		<label>Usuń ID: </label>
		<select id="id-sel" title="ID rekordu do usunięcia">
		<option value="">Wybierz ID</option><!-- teraz tutaj się zatrzymuje -->
		
		
		<?php
		if(isset($_POST["login"])&&isset($_POST["haslo"]))//tej linijki zabrakło
		{
			try{
			/*$conn = new mysqli("localhost:3306","dziekan","Kasz4te!lan%","student");
				if($conn->connect_error){
				echo "<p>Nie można się połaczyć z serwerem.</p>";
				throw new Exception($conn->connect_error);
				die($conn->connect_error);}
			mysqli_set_charset($conn, "utf8");*/
			$sql = "select * from student";
			$wynik=$conn->query($sql);
			$ile = $wynik->num_rows;

		if($ile>0)
			{
				while($row=$wynik->fetch_assoc())
				{
					echo '\r\n<option value="'.$row["ID"].'">'.$row["ID"].'</option>';
				}
				
			}
			if(isset($_POST["id-sel"]))
			{
				$conn->query("delete from student where id=".$_POST["id-sel"]);
			}
			$conn->close();
			}
			catch(Exception $error)
			{
				//echo "<p>Nastąpiły problemy.</p>";
				exit();
			}
		}
		else
		{
			//echo "<p>Zmienne niezainicjowane.</p>";
		}
		?> 
		
		</select>
	<input type="submit" name="del" value="Usuń"/>
	</form>
	</div>
	</div>
	</body>
</html>