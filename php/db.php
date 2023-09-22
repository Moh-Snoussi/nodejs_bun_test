<?php

$pdo;

$dsn = "mysql:host=localhost;dbname=qa_polls;charset=utf8";

try {
    $pdo = new PDO($dsn, 'admin', 'admin');
} catch (PDOException $e) {
    die('Error connecting to MySQL: ' . $e->getMessage());
}

function getQuestions()
{
    global $pdo;
    $sql = 'SELECT * FROM polls_question';
    $stmt = $pdo->query($sql);
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}
