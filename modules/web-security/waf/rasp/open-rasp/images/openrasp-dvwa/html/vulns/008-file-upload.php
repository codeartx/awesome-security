<?php
    error_reporting(E_ALL);
    ini_set("display_errors", 1);
?>

<html>
<head>	
	<meta charset="UTF-8"/>
	<title>008 - 任意文件上传 - move_uploaded_file 方式</title>
</head>
<body>
<h1>008 - 任意文件上传 - move_uploaded_file 方式</h1>
<p>不正常的调用</p>
<pre>echo '&lt;?php phpinfo(); ?>' > 1.php &amp;&amp; curl '<?php echo 'http://'.$_SERVER['HTTP_HOST'].parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH) ?>' -F "file=@1.php" &amp;&amp; rm -f 1.php</pre>
<br>

<?php 
	if (isset ($_FILES['file']))
	{
		move_uploaded_file($_FILES["file"]["tmp_name"], $_FILES["file"]["name"]);
	}
?>
</body>
</html>
