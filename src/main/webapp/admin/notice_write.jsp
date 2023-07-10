<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./css/default.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/noticewrite.css?v=4">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="./js/noticewrite.js?v=2"></script>
<script src="../ckeditor/ckeditor.js"></script>

<title>공지사항</title>
</head>
<body>
<%@ include file="/admin/admin_header.jsp" %> <!-- 탑 -->
<%@ include file="/admin/admin_menu.jsp" %> <!-- 메뉴 -->
<section class="l1">
<ul class="l1ul">
<li>■</li>
<li>⠀공지사항 등록페이지</li>
</ul>
</section>

<form id="notice_reg">
<section class="notice_s">
<ul>
<li><span>공지사항 제목</span><input type="text" class="n_sub" name="nsub1"><label>※ 최대 150자까지 입력이 가능</label></li>
<li><span>글쓴이</span><input type="text" class="n_writer" name="nwriter1"><label>※ 관리자 이름이 노출됩니다.</label></li>
<li><span>첨부파일</span><input type="file" class="n_file" name="nfile1" value=""><label>※ 첨부파일 최대 용량은 2MB 입니다.</label></li>
<li><span>공지내용</span><textarea id="ntexts" class="ntexts" name="ntext1"></textarea></li>
<li><div onclick="back()">공지목록</div><div onclick="reg()">공지등록</div></li>
</ul>
</section>
</form>
<%@ include file="/admin/admin_footer.jsp" %> <!-- 카피라이터 -->
</body>
 <script>
CKEDITOR.replace( 'ntexts',
  {
    width : '750px',  
    height : '320px', 
    startupFocus : false
  }
  );
</script>
</html>