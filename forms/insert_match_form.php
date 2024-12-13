<?php
require "../connectDB.php";
$sqlPlayer = "SELECT DISTINCT CONCAT(p.first_name, ' ', p.last_name) AS Player_Name 
        FROM player p
        ORDER BY `Player_Name` ASC";

$stmtPlayer = $pdo->prepare($sqlPlayer);
$stmtPlayer->execute();
$all_players = $stmtPlayer->fetchAll(PDO::FETCH_COLUMN);

$sqlSlam = "SELECT s.Name
        FROM slam s
        ORDER BY FIELD(Code, 'AO', 'RG', 'WIM', 'USO')";

$stmtSlam = $pdo->prepare($sqlSlam);
$stmtSlam->execute();
$slams = $stmtSlam->fetchAll(PDO::FETCH_COLUMN);
?>

<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Slam Data</title>
    <link rel="stylesheet" type="text/css" href="../css/player_form.css">
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
    <div class="slam_head">
        <img src="../img/AO.png" alt="" width="90" height="90"></a>
        <img src="../img/RG.png" alt="" width="90" height="90"></a>
        <img src="../img/WIM.png" alt="" width="90" height="90"></a>
        <img src="../img/USO.png" alt="" width="90" height="90"></a>
    </div>
    <h1>Form to add a match</h1>
    <form method="POST" action="./response.php">
        <input type="hidden" name="source_file" value="insert_match_form.php">
        <label for="year">Year</label>
        <input type="text" name="year" id="year" size="10" /><br>

        <label for="Slam">Slam</label>
        <select name="Slam" id="Slam">
            <?php foreach ($slams as $slam) : ?>
                <option value="<?php echo $slam; ?>"><?php echo $slam; ?></option>
            <?php endforeach; ?>
        </select><br>

        <label for="Champion">Champion</label>
        <select name="Champion" id="Champion">
            <?php foreach ($all_players as $player) : ?>
                <option value="<?php echo $player; ?>"><?php echo $player; ?></option>
            <?php endforeach; ?>
        </select><br>

        <label for="seedC">Champion Seed</label>
        <input type="text" name="seedC" id="seedC" size="5" /><br>

        <label for="RunnerUp">Runner-Up</label>
        <select name="RunnerUp" id="RunnerUp">
            <?php foreach ($all_players as $player) : ?>
                <option value="<?php echo $player; ?>"><?php echo $player; ?></option>
            <?php endforeach; ?>
        </select><br>

        <label for="seedR">Runner-Up Seed</label>
        <input type="text" name="seedR" id="seedR" size="5" /><br>

        <label for="score">Score</label>
        <input type="text" name="score" id="score" size="50" /><br>

        <button type="submit">Send</button>
        <button type="reset" onclick="goBack()">Back</button>
    </form>
    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</body>

</html>