<?php
// var_dump($_POST);
// exit();

// 必須項目のチェック
if (
    !isset($_POST['task']) || $_POST['task'] == '' ||
    !isset($_POST['deadline']) || $_POST['deadline'] == ''
) {
    echo json_encode(['error' => 'param error']);
    http_response_code(500);
    exit();
}


// 受け取ったデータを変数に格納
$task = $_POST['task'];
$deadline = $_POST['deadline'];
$price = $_POST['price'];

// DBの設定
$dbn = 'mysql:dbname=gsacfd05_04;charset=utf8;port=3306;host=localhost';
$user = 'root';
$pwd = '';

// DBに接続する処理
try {
    $pdo = new PDO($dbn, $user, $pwd);
} catch (PDOException $e) {
    echo json_encode("db error: {$e->getMessage()}");
    http_response_code(500);
    exit();
}

// データ登録SQL作成
$sql = 'INSERT INTO cooking_table(id, task, deadline, price, created_at, updated_at) 
        VALUES(NULL, :task, :deadline, :price, sysdate(), sysdate())';

// SQL実行
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':task', $task, PDO::PARAM_STR);
$stmt->bindValue(':deadline', $deadline, PDO::PARAM_STR);
$stmt->bindValue(':price', $price, PDO::PARAM_STR);
$status = $stmt->execute();



//データ登録処理後
if ($status == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    echo json_encode($error[2]);
    http_response_code(500);
    exit();
} else {
    echo json_encode('done!');
    exit();
}
