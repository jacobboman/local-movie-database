<?php

	if (isset($_POST['artist_name'])){ // det är bättre att använda "metoden" POST
		echo "I will save artist with name: " . $_REQUEST['artist_name'] . "!<br>";
	} else if (isset($_GET['artis_name'])){
		echo "GET save artist with name NOT DO!: " . $_REQUEST
	}


?>

<form>
	<label for="artis_name">Artist name:</label>
	<input type="text" name="artist_name" id="artist_name">

	<input type="submit" value="Create Artist">
	
</form>