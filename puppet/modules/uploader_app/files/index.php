<html>
<body>
<h1>Welcome to superupload!</h1>
<form action="upload_file.php" method="post"
enctype="multipart/form-data">
<label for="file">Filename:</label>
<input type="file" name="file" id="file" /> 
<br />
<input type="submit" name="submit" value="Submit" />
</form>

<h2>Uploaded files</h2>

<?php
	$permament_filestore = "/var/www/html/filestore";
	$handle = opendir($permament_filestore);
	if($handle == NULL){
		echo "Could not open filestore";
	}
	else{
		while(false !== ($entry = readdir($handle))){
			if ($entry != '.' && $entry != '..' ){
				echo '<a href="filestore/'.$entry .'" >' . $entry ."</a><br />";
			}
		}
		closedir($handle);
	}
?>

</body>
</html>
