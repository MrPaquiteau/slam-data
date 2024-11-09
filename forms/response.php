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
    <?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    require "../ConnectDB.php";
    $source_file = $_POST['source_file'];


    if ($source_file === "insert_player_form.php") {
        
        $fn = $_POST['first_nameP'];
        $ln = $_POST['last_nameP'];
        $nat = $_POST['NAT'];

        $sql = "INSERT INTO player (last_name, first_name, ref_nationality) VALUES (?, ?, (SELECT Code FROM country c WHERE c.Label = ?))";

        $stmt = $pdo->prepare($sql);

        $stmt->bindValue(1, $ln);
        $stmt->bindValue(2, $fn);
        $stmt->bindValue(3, $nat);

        $stmt->execute();

        $rowsAdded = $stmt->rowCount();
        echo "Nombre de lignes ajoutées à la table player: " . $rowsAdded;
    } elseif ($source_file === "insert_match_form.php") {

        $year = $_POST["year"];
        $slam = $_POST["Slam"];
        $champion = $_POST["Champion"];
        $runnerup = $_POST["RunnerUp"];
        $score = $_POST["score"];
        $seedC = $_POST["seedC"];
        $seedR = $_POST["seedR"];

        $sql = "INSERT INTO tournament (slam_year, slam_ref, Champion, Seed_Champion, Runner_Up, Seed_Runner_up, Final_Score) VALUES
    (?, (SELECT s.Code FROM slam s WHERE s.Name = ?), (SELECT id FROM player WHERE CONCAT(first_name, ' ', last_name) = ?),
     ?, (SELECT id FROM player WHERE CONCAT(first_name, ' ', last_name) = ?), ?, ?)";

        $stmt = $pdo->prepare($sql);

        $stmt->bindValue(1, $year);
        $stmt->bindValue(2, $slam);
        $stmt->bindValue(3, $champion);
        $stmt->bindValue(4, $seedC);
        $stmt->bindValue(5, $runnerup);
        $stmt->bindValue(6, $seedR);
        $stmt->bindValue(7, $score);
        try {
            $stmt->execute();
            echo "<h1>The line below as been correctly add in the tournament's table</h1>"; ?>
            <table>
                <tr>
                    <th>Year</th>
                    <th>Slam</th>
                    <th>Champion</th>
                    <th>Seed Champion</th>
                    <th>Runner-Up</th>
                    <th>Seed Runner-Up</th>
                    <th>Score</th>
                </tr>
                <tr>
                    <td><?php echo $year ?></td>
                    <td><?php echo "code of : " . $slam; ?></td>
                    <td><?php echo "id of : " . $champion; ?></td>
                    <td><?php echo $seedC; ?></td>
                    <td><?php echo "id of : " . $runnerup; ?></td>
                    <td><?php echo $seedR; ?></td>
                    <td><?php echo $score; ?></td>
                </tr>
            </table>
    <?php } catch (Exception $e) {
            // Code to handle the exception
            echo "Caught exception: " . $e->getMessage();
        }
    } ?>

</body>

</html>