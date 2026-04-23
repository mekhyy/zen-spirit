<?php
include 'db.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    
    $name     = mysqli_real_escape_string($conn, $_POST['name']);
    $category = mysqli_real_escape_string($conn, $_POST['category']);
    $price    = mysqli_real_escape_string($conn, $_POST['price']);
    $image    = mysqli_real_escape_string($conn, $_POST['image']);

    $sql = "INSERT INTO products (name, category, price, image) VALUES (?, ?, ?, ?)";
    
    $stmt = $conn->prepare($sql);
    
    $stmt->bind_param("ssds", $name, $category, $price, $image);

    if ($stmt->execute()) {
        echo "<script>
                alert('Success! $name has been added to the $category collection.');
                window.location.href = '../admin.html';
              </script>";
    } else {
        echo "<script>
                alert('Error: Could not add product. " . $stmt->error . "');
                window.location.href = '../admin.html';
              </script>";
    }

    $stmt->close();
    $conn->close();
} else {
    header("Location: ../admin.html");
    exit();
}
?>