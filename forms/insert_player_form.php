<?php
require "../connectDB.php";
$sql = "SELECT Label FROM Country ORDER BY Label ASC";

$stmt = $pdo->prepare($sql);
$stmt->execute();
$all_countries = $stmt->fetchAll(PDO::FETCH_COLUMN);
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
    <h1>Form to add a player</h1>
    <form method="POST" action="response.php">
        <input type="hidden" name="source_file" value="insert_player_form.php">
        <label for="first_nameP">Player First Name</label>
        <input type="text" name="first_nameP" id="first_nameP" /><br>
        <label for="last_nameP">Player Last Name</label>
        <input type="text" name="last_nameP" id="last_nameP" /><br>
        <label for="NAT">Choose Nationality :</label>
        <select name="NAT" id="NAT">
            <?php foreach ($all_countries as $country) : ?>
                <option value="<?php echo $country; ?>"><?php echo $country; ?></option>
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