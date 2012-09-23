<html>
<body>

<?php
	$permanent_directory = "/var/www/html/filestore";
	// Where PHP stores it's uploads
	$uploaded_file = $_FILES["file"]["tmp_name"]; 
	// The real name of the file
	$real_name = $_FILES["file"]["name"];
	// Copy the uploaded file to the permanent file store
	if(move_uploaded_file($uploaded_file,$permanent_directory . '/' . $real_name))
	{
		// Could copy properly
		echo 'Upload complete! <a href="/">Go back to the homepage to see the file listing</a>';
	}
	else {
		// Something went wrong :(
		echo "Could not move uploaded file to the permantent filestore!";
	}
?>

</body>
</html>
