
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
	function changeTourNo(){
		var cate = document.frm1.cate.value;
		if(cate==""){
			alert("분류를 선택하지 않으셨습니다.");
			document.frm1.cate.focus();
			return;
		}
		$.ajax({
			url:"${path1  }/NoLoadCtrl.do",
			type:"post".
			dataType:"json",
			success:function(data){
				console.log(data.no);
				$("#tourno").val(cate + data.no);
			}
		});
	}
	</script>
</body>
</html>