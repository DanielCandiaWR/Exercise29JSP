<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<h2>Multiplication Table</h2>

	<table class="table">
		<thead class="thead-dark">
			<tr>
				<th scope="col">Table</th>
				<th scope="col">Multiplier</th>
				<th scope="col">Equals</th>
			</tr>
		</thead>
		<tbody>
			<%
				int table = Integer.parseInt(request.getParameter("txtTable"));
				int range = Integer.parseInt(request.getParameter("txtRange"));
				for (int i = 1; i < range; i++) {
					out.append("<tr>");
					out.append("<td>");
					out.append("" + table);
					out.append("</td>");
					out.append("<td>");
					out.append("" + i);
					out.append("</td>");
					out.append("<td>");
					out.append("" + table * i);
					out.append("</td>");
					out.append("</tr>");
				}
			%>
		</tbody>
	</table>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>