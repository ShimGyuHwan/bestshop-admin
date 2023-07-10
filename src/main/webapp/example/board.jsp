<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CKEditor 연결</title>
<script src="./ckeditor/ckeditor.js"></script>
</head>
<style>
.texts{
width:800px;
height:400px;
}
</style>
<body>

<textarea id="texts" class="texts"></textarea>

</body>
 <script>
CKEDITOR.replace( 'texts' );
</script>

</html>