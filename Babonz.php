<?php
$servername = "172.19.0.3";
$username = "root";
$password = "Babonz";
$dbname = "Redlock";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "id: " . $row["ID"]. " - Name: " . $row["Nama"]. " " . $row["Alamat"]. " ".  $row["Jabatan"]. "<br>";
  }
} else {
  echo "0 results";
}
echo $result->num_rows;
$conn->close();
?>