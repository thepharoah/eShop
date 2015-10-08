<?php

function getProduct() {
	global $con;
	$get_pro = "select * from products1 order by RAND() LIMIT 0,8";
   $run_pro = mysql_query($get_pro); 
   $count = 0;
  while($row_pro=mysql_fetch_array($run_pro)) {
	  if($count > 3){
				echo "</tr><tr>";
				$count = -1;
			}
	  $pro_id = $row_pro['id'];
	  $pro_code=$row_pro['product_code'];
     $pro_name=$row_pro['product_name'];
	 $pro_desc=$row_pro['product_desc'];
	 $pro_img=$row_pro['product_image'];
	 $pro_price=$row_pro['price'];
	 
	 echo  	   " <div id='single_product'>
	         <h3>$pro_name</h3>
			 <img src='images/pro_images/$pro_img' width='180' height='180' />
			 <p><b>$ $pro_price </b></p>
			 <a href='details.php?pid=$pro_id'  style='float:left;'>Details</a> <br>
			 <a href='buy.php?pid=$pro_id'><button_style='float:left>Buy</button>
	            </div>"; 
				$count++;
  }
}
function logged_in_redirect() {
	if(logged_in() === true) {
		header('Location: index.php');
		exit();
	}
}
function protect_page() {
	if (logged_in() === false) {
		header('Location: protected.php');
		exit();
	}
}

function array_sanitize(&$item) {
	$item = mysql_real_escape_string($item);
}
function sanitize($data) {
	return mysql_real_escape_string($data);
}

function output_errors($errors) {
	$output = array();
     foreach($errors as $error) {
		$output[] = '<li>' . $error . '</li>';
	
	return '<ul>' . implode('', $output) . '</ul>';
}
}
?>