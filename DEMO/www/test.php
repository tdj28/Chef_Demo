 <?php
 mysql_connect("192.168.33.13", "demouser", "demo321pass") or die(mysql_error());
 mysql_select_db("demo") or die(mysql_error());
 $data = mysql_query("SELECT * FROM products")
 or die(mysql_error());
 Print "<table border cellpadding=3>";
 while($info = mysql_fetch_array( $data ))
 {
 Print "<tr>";
 Print "<th>Product Name:</th> <td>".$info['name'] . "</td> ";
Print "<th>Manufacturer:</th> <td>".$info['manufacturer'] . " </td>";
 Print "<th>Quantity in Stock:</th> <td>".$info['quantity_in_house'] . " </td></tr>";
 }
 Print "</table>";
 echo "<br><br>Demo project for TJones<br><br>MySQL IP: 192.168.33.13 <br>";
 echo "Server IP: ".$_SERVER['SERVER_ADDR'];
 echo "<br>";
 echo "\nClient IP: ".$_SERVER['REMOTE_ADDR'];
 echo "<br>";
 echo "\nX-Forwarded-for: ".$_SERVER['HTTP_X_FORWARDED_FOR'];
 echo "<br>";
 echo "Refresh page to see round-robin load balancing in action"

 ?>
