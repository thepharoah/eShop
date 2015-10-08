<?php
include 'core/init.php'; 
 protect_page();
 
 
 include 'includes/overall/header.php';
 
 ?> 
 <?php
 $pid = $_GET['pid'];
 $query =  mysql_query("select * from products1 WHERE id = $pid");
 $product = mysql_fetch_array($query);
 echo $product['product_desc'];
 ?>
 
<?php  include 'includes/overall/footer.php'; ?>
