<?php
require "../connectDB.php";

// REQUETE PALMARES
$Player = $_POST['player_choice'];

$sql = "CREATE OR REPLACE VIEW achievements AS 
        SELECT IFNULL(t.slam_ref, 'TOTAL') AS slam_ref, COUNT(*) AS Total_Wins 
        FROM tournament t
        JOIN player p1 ON p1.Id = t.Champion 
        WHERE CONCAT(p1.first_name, ' ', p1.last_name) = ?
        GROUP BY t.slam_ref WITH ROLLUP";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(1, $Player);
$stmt->execute();

$sql = "SELECT * FROM achievements
        ORDER BY FIELD(slam_ref, 'AO', 'RG', 'WIM', 'USO', 'TOTAL')";

$stmt = $pdo->prepare($sql);
$stmt->execute();
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

// REQUETE MATCHS
$sql2 = "SELECT
            CONCAT(p1.first_name, ' ', p1.last_name) AS Champion,
            CONCAT(p2.first_name, ' ', p2.last_name) AS RunnerUp,
            t.slam_year,
            t.Final_Score,
            t.slam_ref
        FROM
            tournament t
        JOIN
            player p1 ON t.Champion = p1.Id
        JOIN
            player p2 ON t.Runner_up = p2.Id
        JOIN 
            slam s ON s.Code = t.slam_ref
        WHERE CONCAT(p1.first_name, ' ', p1.last_name) = ? OR CONCAT(p2.first_name, ' ', p2.last_name) = ?
        ORDER BY t.slam_year DESC, FIELD(t.slam_ref, 'USO', 'WIM', 'RG', 'AO')";

$stmt2 = $pdo->prepare($sql2);
$stmt2->bindValue(1, $Player);
$stmt2->bindValue(2, $Player);
$stmt2->execute();
$results2 = $stmt2->fetchAll(PDO::FETCH_ASSOC);
?>

<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slam Data</title>
    <link rel="stylesheet" type="text/css" href="../css/player_data.css">
</head>

<body>
    <nav class="navbar">
        <ul class="navbar__menu">
            <li>
                <a href="../index.html">Home</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropbtn">Slams</a>
                <div class="dropdown-child">
                    <a href="../slams.php?slam=AO">Australian Open <img src="../img/AO.png" alt="" width="50" height="50"></a>
                    <a href="../slams.php?slam=RG">Roland-Garros <img src="../img/RG.png" alt="" width="50" height="50"></a>
                    <a href="../slams.php?slam=WIM">Wimbledon <img src="../img/WIM.png" alt="" width="50" height="50"></a>
                    <a href="../slams.php?slam=USO">US Open <img src="../img/USO.png" alt="" width="50" height="50"></a>
                </div>
            </li>
            <li class="dropdown">
                <a href="#" class="dropbtn">Forms</a>
                <div class="dropdown-child">
                    <a href="./insert_player_form.php">Add New Player </a>
                    <a href="./insert_match_form.php">Add New Result </a>
                    <a href="./player_achievements_form.php">Player's Record</a>
                </div>
            </li>
            <li>
                <a href="../about.html">About</a>
            </li>
        </ul>
    </nav>
    <h1><?php echo $Player ?> has won <?php echo end($results)['Total_Wins'] ?> Grand Slam title<?php echo (end($results)['Total_Wins'] > 1) ? 's' : '' ?></h1>
    <div class="slam-container">
        <?php foreach ($results as $row) : ?>
            <div class="slam-card">
                <div class="slam-info">
                    <?php
                    if ($row['slam_ref'] == 'AO') :
                        echo '<img src="../img/AO.png" alt="Open d\'Australie">';
                    elseif ($row['slam_ref'] == 'RG') :
                        echo '<img src="../img/RG.png" alt="Roland-Garros">';
                    elseif ($row['slam_ref'] == 'WIM') :
                        echo '<img src="../img/WIM.png" alt="Wimbledon">';
                    elseif ($row['slam_ref'] == 'USO') :
                        echo '<img src="../img/USO.png" alt="US Open">';
                    endif;
                    ?>
                    <div class="slam-trophies">
                        <?php
                        for ($i = 0; $i < $row['Total_Wins']; $i++) {
                            if ($row['slam_ref'] == 'AO') :
                                echo '<img src="../img/AOT.svg.png" alt="Open d\'Australie">';
                            elseif ($row['slam_ref'] == 'RG') :
                                echo '<img src="../img/RGT.svg.png" alt="Roland-Garros">';
                            elseif ($row['slam_ref'] == 'WIM') :
                                echo '<img src="../img/WIMT.svg.png" alt="Wimbledon">';
                            elseif ($row['slam_ref'] == 'USO') :
                                echo '<img src="../img/USOT.svg.png" alt="US Open">';
                            endif;
                        }
                        ?>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
    <br>
    <h1>Grand Slam final<?php echo (count($results2) > 1) ? 's' : '' ?> played by <?php echo $Player ?></h1>
    <table>
        <tr>
            <th>Year</th>
            <th>Champion</th>
            <th>Score</th>
            <th>Runner-Up</th>
            <th>Slam</th>
        </tr>
        <?php
        foreach ($results2 as $row) : ?>
            <tr>
                <td><?php echo $row['slam_year']; ?></td>
                <?php if ($row['Champion'] == $Player) : ?>
                    <td class="td_champ"><?php echo $row['Champion']; ?>
                        <img src="../img/<?php echo $row['slam_ref']; ?>T.svg.png" ; ?>
                    </td>
                <?php else : ?>
                    <td><?php echo $row['Champion']; ?></td>
                <?php endif; ?>
                <?php if ($row['Champion'] == $Player) : ?>
                    <td class="win"><?php echo $row['Final_Score']; ?></td>
                <?php else : ?>
                    <td class="loose"><?php echo $row['Final_Score']; ?></td>
                <?php endif; ?>
                <td><?php echo $row['RunnerUp']; ?></td>
                <td class="td_slam">
                    <img src="../img/<?php echo $row['slam_ref']; ?>.png" ; ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
</body>

</html>