<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>${cardDetails.cardNo.firstFourNo}-${cardDetails.cardNo.secondFourNo}-${cardDetails.cardNo.thirdFourNo}-${cardDetails.cardNo.fourthFourNo}</h3>
	<h3>${cardDetails.expDate.cardMonth}/${cardDetails.expDate.cardYear}</h3>
</body>
</html>