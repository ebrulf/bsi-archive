<!-- <?xml version="1.0" encoding="UTF-8"?> -->
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="pl" lang="pl">
	<head>
		<title>Baza w MySQL</title>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<!-- domyślnie są to type="text/javascript" -->
		<link href="styl.css" rel="stylesheet" />
		<link href="favicon-120x120.png" type="image/png" rel="icon" sizes="120x120" />
	</head>
	<body>
	<header>
	<?php include('menu.html'); ?>
	</header>
	<?php
	$conn = new mysqli("localhost:3306","dziekan","Kasz4te!lan%","student");
			if($conn->connect_error){
				echo("<p>Nie można się połaczyć z serwerem</p>");
				die($conn->connect_error);}
			
	$conn->query("use student;");
	$sql = "select * from student;";
			$wynik=$conn->query($sql);
			/* if($wynik->num_rows>0)
			{
				while($row=$wynik->fetch-assoc())
				{
					echo("<p>"+$row["ID"]);
					echo($row["imię"]);
					echo($row["nazwisko"]);
					echo($row["wiek"]+"</p>");
				}
			} */
	?>
	<p>Ta strona zawiera treści.<br />
	Co wiem na temat łączenia PHP z MySQL? Oto notatki z zeszytu:</p>
	<pre>&dollar;conn = new mysqli(&quot;nazwa_serwera&quot;, &quot;użytkownik&quot;, &quot;hasło&quot;,&quot;nazwa_bazy&quot;);
	if(&dollar;conn-&gt;connect_error){ die(&dollar;conn-&gt;connect_error);}
	&dollar;sql = &quot;select * from student;&quot;;
			&dollar;wynik=&dollar;conn-&gt;query(&dollar;sql);
	if(&dollar;wynik-&gt;num_rows&gt;0)
			{
				while(&dollar;row=&dollar;wynik-&gt;fetch-assoc())
				{
					echo(&quot;&lt;p&gt;&quot;+&dollar;row[&quot;ID&quot;]);
					echo(&dollar;row[&quot;wiek&quot;]+&quot;&lt;/p&gt;&quot;);
				}
			}
		&lt;form action=&quot;index.php&quot; method=&quot;post&quot;&gt;
		if(isset(&dollar;_POST[&quot;name w submit&quot;])&amp;&amp;&dollar;_POST[&quot;name w submit&quot;]==&quot;value w submit&quot;)
		{
			&dollar;zmienna = &dollar;_POST[&quot;name w polu formularza&quot;];
		}
		&lt;/form&gt;
	Do kasowania możnadodać do rekordu przycisk w submit. w osobnym form na reload dać input type=&quot;hidden&quot; z id rekordu
	Sprawdzamy, czy kliknięto kasuj i polecenie delete from student where id=&dollar;id
	W tym samym zagnieżdżonym formularzu - Edytuj
	Przy edytowaniu dane stają się textboxami ze starymi danymi - tak ma być
	Jak zastąpić dane textboxami - najbardziej łopatologicznie: przeładować całą stronę
	Albo dostać się do tych stron przez JavaScript</pre>
	</body>
	<?php $conn->close(); ?>
</html>
