<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<title>Submit a post</title>
</head>
<body>
<form action="/post" method="post">
	<div>
	<label style="display:block">Title:</label>
	<input type="text" name="title" style="width:500px;height:20px;">
	</div>
	<div>
	<label style="display:block">Content you want to post:</label>
	<textarea type="text" name="textContent" style="width:500px;height:50px;resize:none;"></textarea>
	</div>
	<div>
	<input type="submit">
	</div>
</form>
</body>
</html>