
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Accueil</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">

</head>
<body>
 	<%@ include file="navbar.jsp"%> 
	

	<div class="container mt-5">
	
	<!-- recupere avec request -->
	<h3 class="mt-5">Bienvenue  ${param.nom} ${param.prenom} </h3> 
	
	<!-- recupere avec request -->
	<%-- <h3 class="mt-5">Bienvenue  ${sessionScope.current.nom} ${sessionScope.current.prenom} </h3> --%>
	
		<div class="card w-100 primary mt-5">
			<div class="card-header"> <h1>Liste des utilsateurs</h1> </div>
			<div class="card-body">
				<!-- tableau d'utilisateur -->
				<table class="table table-hover w-100">

					<tr>
						<th>NOM</th>
						<th>PRENOM</th>
						<th>PSEUDO</th>
						<th>EMAIL</th>
					</tr>

					<c:forEach var="p" items="${sessionScope.list}">
						<tr>
							<td>${p.nom}</td>
							<td>${p.prenom}</td>
							<td>${p.pseudo}</td>
							<td>${p.email}</td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
</body>
</html>