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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
        <!-- Links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link active"href="#">Accueil</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Operation</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Boutique</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">Client</a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="#">Nouveau</a></li>
                    <li><a class="dropdown-item" href="#">Chercher</a></li>
                </ul>
            </li>
        </ul>
        <ul class="navbar-nav" >
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"></a>
                <ul class="dropdown-menu">
                    <li><a class="dropdown-item" href="inscrire.jsp">S'inscrire</a></li>
                    <li><a class="dropdown-item" href="login">Deconnexion</a></li>
                </ul>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="login.jsp">${param.nom} </a> 
            </li>
        </ul>
    </div>
</nav>
	
	
	
</body>
</html>