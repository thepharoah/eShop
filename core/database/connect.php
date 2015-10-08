<?php
$connect_error = 'Sorry we are experiencing some problems';
mysql_connect('localhost','root','') or die($connent_error) ; 
mysql_select_db('ir') or die($connect_error); 

?>