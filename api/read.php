<?php

// DBの設定
$dbn = 'mysql:dbname=gsacfd05_04;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DBに接続する処理
try {
    $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
    exit('dbError:' . $e->getMessage());
}

// データ表示SQL作成
$sql = 'SELECT * FROM cooking_table';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();


// データ表示
$view = '';
if ($status == false) {
    $error = $stmt->errorInfo();
    echo json_encode($error[2]);
    http_response_code(500);
    exit();
} else {
    // fetchAll()でSQL実行結果を全件取得できる
    echo json_encode($stmt->fetchAll());
    exit();
}
