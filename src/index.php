<?php
echo "hello, world"."\n"."<br>";

echo "========================"."\n"."<br>"; 
?>

<?php
  $conn = new mysqli("mysql", "root", "password", "test");
  // Check connection
  if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
  } else {echo "connect to DB successful\n"."<br>";}

  echo "========================"."\n"."<br>";

  $sql = "SELECT * FROM test";
  $result = $conn->query($sql);

  if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      echo $row["id"]. " " . $row["user"] . " " . $row["name"] ."\n". "<br>" ;
    }
  }
  $conn->close();
?>
