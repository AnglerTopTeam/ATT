<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
   <link rel="stylesheet" href="resources/css/jquery.dataTables.min.css">
   <script src="resources/js/jquery-3.1.1.min.js"></script>
   <script src="resources/js/jquery.dataTables.min.js"></script>
   <script src="resources/js/dataTables.bootstrap.min.js"></script>
</head>
   <script type="text/javascript">
      $(document).ready(function() {
          $('#example').DataTable();
          $("#allchk").click(function() {
             if($(this).is(':checked')) {
                $("input[name=unitchk]").prop("checked", true);   
             } else {
                $("input[name=unitchk]").prop("checked", false);
             }
          });
         $("#example_filter").append("<button id='selectdel' type='button' style='margin-left: 200px;'>선택삭제</button>");
         $('#selectdel').click(function(){
            var checked = $("input[name=unitchk]:checked").length;
            var saveids = new Array();
            if(checked == 0 ){
               alert("삭제할 항목에 체크하세요!");
               return;
            } else {
            	var returnValue = confirm("선택 삭제 하시겠습니까?");
            	
            	if(returnValue) {
            		$('#unitchk:checked').each(function(index){
                 	   saveids[index] = $(this).val();
               });
               var url = "mSelectedDelete?saveids="+saveids;
               $(location).attr('href',url);
            	}else{
            		return;
            	}
            }
         });
      } );
   </script>

<body>
<span class="text-success text-center"><h1>회원목록 </h1></span>
<table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>아이디</th>
                <th>이름</th>
                <th>닉네임</th>
                <th>전화번호</th>
                <th>이메일</th>
                <th style="text-align: center !important;"><input type="checkbox" id="allchk"></th>
            </tr>
        </thead>

        <tbody>
           <c:forEach var="member" items="${members}">
            <tr>
                <td><a href="mUpdateForm?id=${member.id}">${member.id}</a></td>
                <td>${member.name}</td>
                <td>${member.nicname}</td>
                <td>${member.phone1}-${member.phone2}-${member.phone3}</td>
                <td>${member.email}</td>
                <td style="text-align: center !important;"><input type="checkbox" id="unitchk" name="unitchk" value="${member.id}" ></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>