
wstawione = false;
wyn = document.getElementById("wynik");
var liczby = "0123456789";
var operacje = "+-*/";
function fetch()
{
	wyn = document.getElementById("wynik");
}
function czyDziala()//case sensitive
{
	obj = document.getElementById("7");
	window.alert("Działa "+obj.value);
}
function reset()
{
	fetch();
	wyn.value = '0'; //jednak trzeba dopisywać
	wstawione = false;
}
function wstaw(num)//teraz to już inspiracja z https://www.javatpoint.com/javascript-calculator
{
	fetch(); //w każdej funkcji trzeba fetchować
	if(!wstawione) //poza tą częścią
	{
		wyn.value='';
		wstawione = true; //aby nie dopisywało do zera
		if((liczby.indexOf(num)!=-1 || operacje.indexOf(num)==1))
		{
			wyn.value = wyn.value + num;
		}
	}
	else
	{
		if(!(liczby.indexOf(wyn.value[wyn.value.length-1])==-1 && liczby.indexOf(num)==-1))//nie dopisuj operacji do operacji
		{
			wyn.value = wyn.value + num;
		}
	}
	//liczby.indexOf(num)!=-1 - jest liczbą
	//operacje.indexOf(num)==-1 - nie jest operacją
	//operacje.indexOf(wyn.value[wyn.value.length-1])==-1 - ostatni znak nie jest operacją
	//window.alert(wyn.value[wyn.value.length-1]);
	//dopisz jak
	//liczba do liczby
	//liczba do operacji
	//operacja do liczby
	//nie operacja do operacji
	//czyli and
}
function oblicz()
{
	fetch();
	if(operacje.indexOf(wyn.value[wyn.value.length-1])!=-1)//nie taki prosty kalkulator
	{
		obciete = wyn.value.slice(0, wyn.value.length-1);
		ostatniaLiczba = wyn.value.slice(znajdzOperacje(obciete)+1, wyn.value.length-1);
		//window.alert(ostatniaLiczba);
		wyn.value = wyn.value + ostatniaLiczba;
	}
	wyn.value = math.evaluate(wyn.value);// za https://stackoverflow.com/a/16262947
}
function znajdzOperacje(str)
{
	for(c=0; c < operacje.length; c+=1)
	{
		if(str.lastIndexOf(operacje[c])!=-1)
		{
			return str.lastIndexOf(operacje[c]);
		}
	}
	return -1;//skoro dodajemy do ostatniejliczby +1
}