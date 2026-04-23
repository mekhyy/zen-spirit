<?php
header('Content-Type: application/json');
include 'db.php';

$sql = "SELECT name AS Name, category AS Category, price AS Price, image AS Image FROM products";
$result = $conn->query($sql);

$inventory = [];

if ($result && $result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $inventory[] = $row;
    }
}

echo json_encode($inventory);
$conn->close();
?>