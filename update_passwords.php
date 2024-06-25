<?php
// Connect to your database
$pdo = new PDO('mysql:host=127.0.0.1;dbname=hostel', 'username', 'password');

// Update passwords for `accommanager` table
$stmt = $pdo->query("SELECT id, password FROM accommanager");
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $hashedPassword = md5($row['password']);

    // Update hashed password in the database
    $updateSql = "UPDATE accommanager SET password_hash = :hashedPassword WHERE id = :id";
    $updateStmt = $pdo->prepare($updateSql);
    $updateStmt->execute(['hashedPassword' => $hashedPassword, 'id' => $row['id']]);
}

// Update passwords for `admin` table
$stmt = $pdo->query("SELECT id, password FROM admin");
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $hashedPassword = md5($row['password']);

    // Update hashed password in the database
    $updateSql = "UPDATE admin SET password_hash = :hashedPassword WHERE id = :id";
    $updateStmt = $pdo->prepare($updateSql);
    $updateStmt->execute(['hashedPassword' => $hashedPassword, 'id' => $row['id']]);
}

// Update passwords for `userregistration` table
$stmt = $pdo->query("SELECT id, password FROM userregistration");
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $hashedPassword = md5($row['password']);

    // Update hashed password in the database
    $updateSql = "UPDATE userregistration SET password_hash = :hashedPassword WHERE id = :id";
    $updateStmt = $pdo->prepare($updateSql);
    $updateStmt->execute(['hashedPassword' => $hashedPassword, 'id' => $row['id']]);
}

echo "Passwords updated successfully.";
?>