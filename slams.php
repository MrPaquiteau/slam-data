<?php

$slams = [
    'AO' => [
        'name' => 'Australian Open',
        'image' => 'img/AO.png',
        'trophy' => 'img/AOT.svg.png',
        'styleSheet' => 'css/AO.css'
    ],
    'RG' => [
        'name' => 'Roland-Garros',
        'image' => 'img/RG.png',
        'trophy' => 'img/RGT.svg.png',
        'styleSheet' => 'css/RG.css'
    ],
    'WIM' => [
        'name' => 'Wimbledon',
        'image' => 'img/WIM.png',
        'trophy' => 'img/WIMT.svg.png',
        'styleSheet' => 'css/WIM.css'
    ],
    'USO' => [
        'name' => 'US Open',
        'image' => 'img/USO.png',
        'trophy' => 'img/USOT.svg.png',
        'styleSheet' => 'css/USO.css'
    ]
];

if (isset($_GET['slam']) && array_key_exists($_GET['slam'], $slams)) {
    $slamName = $slams[$_GET['slam']]['name'];
    $slamImage = $slams[$_GET['slam']]['image'];
    $slamtrophy = $slams[$_GET['slam']]['trophy'];
    $slamStyleSheet = $slams[$_GET['slam']]['styleSheet'];
} else {
    header('Location:./index.html');
    exit;
}
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $slamName;?> Data</title>
    <link rel="stylesheet" type="text/css" href="css/slams.css">

</head>

<body class="theme-<?= $_GET['slam']?>">
    <nav class="navbar">
        <ul class="navbar__menu">
            <li>
                <a href="./index.html">Home</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropbtn">Slams</a>
                <div class="dropdown-child">
                    <a href="?slam=AO">Australian Open <img src="./img/AO.png" alt="" width="50" height="50"></a>
                    <a href="?slam=RG">Roland-Garros <img src="./img/RG.png" alt="" width="50" height="50"></a>
                    <a href="?slam=WIM">Wimbledon <img src="./img/WIM.png" alt="" width="50" height="50"></a>
                    <a href="?slam=USO">US Open <img src="./img/USO.png" alt="" width="50" height="50"></a>
                </div>
            </li>
            <li class="dropdown">
                <a href="#" class="dropbtn">Forms</a>
                <div class="dropdown-child">
                    <a href="./forms/insert_player_form.php">Add New Player </a>
                    <a href="./forms/insert_match_form.php">Add New Result </a>
                    <a href="./forms/player_achievements_form.php">Player's Record</a>
                </div>
            </li>
            <li>
                <a href="./about.html">About</a>
            </li>
        </ul>
    </nav>
    <?php
    require "./connectDB.php";
   ?>
    <h1><?php echo $slamName;?> Finals <img src="<?php echo $slamImage;?>" alt="" width="65" height="65"></h1>
    <table>
        <tr>
            <th>Year</th>
            <th>Champion</th>
            <th>Seed Champion</th>
            <th>Finalist</th>
            <th>Seed Finalist</th>
            <th>Score</th>
        </tr>
        <?php
        $sql = 
             "SELECT
                    CONCAT(p1.first_name, ' ', p1.last_name) AS Champion,
                    CONCAT(p2.first_name, ' ', p2.last_name)AS RunnerUp,
                    t.Seed_Champion,
                    t.Seed_Runner_up,
                    t.slam_year,
                    t.Final_Score
                FROM
                    tournament t
                JOIN
                    player p1 ON t.Champion = p1.Id
                JOIN
                    player p2 ON t.Runner_up = p2.Id
                JOIN 
                    slam s ON s.Code = t.slam_ref
                WHERE s.Name = :slamName
                ORDER BY t.slam_year DESC";

        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':slamName', $slamName);
        $stmt->execute();
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

        foreach ($rows as $row) :?>
            <tr>
                <td><?php echo $row['slam_year'];?></td>
                <td><?php echo $row['Champion'];?> <img src="<?php echo $slamtrophy;?>" alt="" width="30" height="35"></td>
                <td><?php echo $row['Seed_Champion'];?></td>
                <td><?php echo $row['RunnerUp'];?></td>
                <td><?php echo $row['Seed_Runner_up'];?></td>
                <td><?php echo $row['Final_Score'];?></td>
            </tr>
        <?php endforeach;?>
    </table>
</body>

</html>