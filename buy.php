<?php 
include 'core/init.php'; 
 protect_page();

$pid = $_GET['pid'];
$uid= $_COOKIE['id'];
 $query =  mysql_query("INSERT INTO `confirm_pro` (user_id,product_id,stock) VALUES ($uid,$pid,1)");

 $query =  mysql_query("SELECT * FROM confirm_pro WHERE user_id = $uid");
   $count = 0;
 while($row_pro=mysql_fetch_array($query)) {
	 $query1= mysql_query("SELECT * FROM product1 WHERE id =$row_pro['product_id']");
	  $product = mysql_fetch_array($query1);
	  $pro_id = $product['id'];
	  $pro_code=$product['product_code'];
     $pro_name=$product['product_name'];
	 $pro_desc=$product['product_desc'];
	 $pro_img=$product['product_image'];
	 $pro_price=$product['price'];
	 
	 echo  	   " <div id='single_product'>
	         <h3>$pro_name</h3>
			 <img src='images/pro_images/$pro_img' width='180' height='180' />
			 <p><b>$ $pro_price </b></p>
			 <a href='details.php?pid=$pro_id'  style='float:left;'>Details</a> <br>
			 <a href='buy.php?pid=$pro_id'><button_style='float:right>Confirm</button>
	            </div>"; 
				$count++;
	  
  }
 


include 'includes/overall/header.php';
?>