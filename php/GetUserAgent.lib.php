<?php
function GetUserAgent() { 
  // ѕолучить переменную окружени€ 
  $str=getenv('HTTP_USER_AGENT'); 
  // ѕопытатьс€ определить известные браузеры по сигнатурам 
  if (strpos($str,"Avant Browser",0)!==false) { 
	return "Avant Browser"; 
  } 
  elseif (strpos($str,"Acoo Browser",0)!==false) { 
	return "Acoo Browser"; 
  } 
  elseif (eregi("Iron/([0-9a-z\.]*)",$str,$pocket)) { 
	return "SRWare Iron ".$pocket[1]; 
  } 
  elseif (eregi("Chrome/([0-9a-z\.]*)",$str,$pocket)) { 
	return "Google Chrome ".$pocket[1]; 
  } 
  elseif (eregi("(Maxthon|NetCaptor)( [0-9a-z\.]*)?",$str,$pocket)) { 
	return $pocket[1].$pocket[2]; 
  } 
  elseif (strpos($str,"MyIE2",0)!==false) { 
	return "MyIE2"; 
  } 
  elseif (eregi("(NetFront|K-Meleon|Netscape|Galeon|Epiphany|Konqueror|". 
		  "Safari|Opera Mini)/([0-9a-z\.]*)",$str,$pocket)) { 
	return $pocket[1]." ".$pocket[2]; 
  } 
  elseif (eregi("Opera[/ ]([0-9a-z\.]*)",$str,$pocket)) { 
	return "Opera ".$pocket[1]; 
  } 
  elseif (eregi("Orca/([ 0-9a-z\.]*)",$str,$pocket)) { 
	return "Orca Browser ".$pocket[1]; 
  } 
  elseif (eregi("(SeaMonkey|Firefox|GranParadiso|Minefield|". 
		  "Shiretoko)/([0-9a-z\.]*)",$str,$pocket)) { 
	return "Mozilla ".$pocket[1]." ".$pocket[2]; 
  } 
  elseif (eregi("rv:([0-9a-z\.]*)",$str,$pocket) && 
		  strpos($str,"Mozilla/",0)!==false) { 
	return "Mozilla ".$pocket[1]; 
  } 
  elseif (eregi("Lynx/([0-9a-z\.]*)",$str,$pocket)) { 
	return "Lynx ".$pocket[1]; 
  } 
  elseif (eregi("MSIE ([0-9a-z\.]*)",$str,$pocket)) { 
	return "ACHTUNG-IE"; 
  } 
  else { 
	// Ёто какой-то неизвестный браузер 
	return "Unknown"; 
  } 
}
?>