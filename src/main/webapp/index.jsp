<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<style>
    #customers{
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }
    #customers td, #customers th{
        border: 1px solid #ddd;
        padding: 8px;
    }
    #customers th {
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #04AA6D;
        color: white
    }
    #customers tr:nth-child(even){background-color: #f2f2f2;}
    #customers tr:hover {background-color: #ddd}
</style>
<script>
    function getLocation() {
        if (navigator.geolocation) { // GPS를 지원하면
            navigator.geolocation.getCurrentPosition(function(position) {

                document.getElementById("LAT").value = position.coords.latitude;
                document.getElementById("LNT").value = position.coords.longitude;
            }, function(error) {
                console.error(error);
            }, {
                enableHighAccuracy: false,
                maximumAge: 0,
                timeout: Infinity
            });
        } else {
            alert('GPS를 지원하지 않습니다');
        }

    }
</script>
<body>
<h1>와이파이 정보 구하기</h1>
<nav>
    <a href="${pageContext.request.contextPath}/index.jsp">홈</a> |
    <a href="${pageContext.request.contextPath}/history.jsp">위치 히스토리 목록</a> |
    <a href="${pageContext.request.contextPath}/data.do">Open API 와이파이 정보 가져오기</a>
</nav>
<br>
<form action="${pageContext.request.contextPath}/search.jsp" method="post">
    <label for="LAT">LAT</label>
    <input type="text" id="LAT" name="LAT" value="0.0"> ,
    <label for="LNT">LNT</label>
    <input type="text" id="LNT" name="LNT" value="0.0">
    <button type="button" onclick= "getLocation()" >내 위치 가져오기</button>
    <button type="submit">근처 WIPI 정보 보기</button>
</form>
<br>
<table id="customers">
    <tr>
        <th>거리(Km)</th>
        <th>관리번호</th>
        <th>자치구</th>
        <th>와이파이명</th>
        <th>도로명주소</th>
        <th>상세주소</th>
        <th>설치위치(층)</th>
        <th>설치유형</th>
        <th>설치기관</th>
        <th>서비스구분</th>
        <th>망종류</th>
        <th>설치년도</th>
        <th>실내외구분</th>
        <th>WIFI접속환경</th>
        <th>X좌표</th>
        <th>Y좌표</th>
        <th>작업일자</th>
    </tr>
    <tr>
        <td colspan="17" style="font-weight:bold; text-align:center" >위치 정보를 입력한 후에 조회해 주세요.</td>
    </tr>
</table>

</body>
</html>