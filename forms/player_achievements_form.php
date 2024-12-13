<?php
require "../connectDB.php";
$sql = "SELECT DISTINCT CONCAT(p.first_name, ' ', p.last_name) AS Player_Name 
        FROM player p
        JOIN tournament t ON t.Champion = p.Id
        ORDER BY `Player_Name` ASC";

$stmt = $pdo->prepare($sql);
$stmt->execute();
$all_players = $stmt->fetchAll(PDO::FETCH_COLUMN);
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
    <form method="POST" action="player_achievements_response.php">
        <label for="player_choice">Choose a player to see his matches and titles</label>
        <select name="player_choice" id="player_choice">
            <?php foreach ($all_players as $player) : ?>
                <option value="<?php echo $player; ?>"><?php echo $player; ?></option>
            <?php endforeach; ?>
        </select><br>
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