<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Inscription</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet" crossorigin="anonymous">

</head>
<body>
 <!-- debut de navBar  -->
	<%@ include file="navbar.jsp" %>

	<!--debut du formulaire  -->
	 <div class="container mt-5 col-md-4">
        <div class="card">
            <div class="card-header"><h3>Inscription</h3></div>
            <div class="card-body">
                <div class="container mt-3">
                    <form action="inscrire" method="post">
                        <div class="mt-3">
                            <label for="nom" class="control-label">Nom</label>
                            <input type="text" id="nom" name="nom" class="form-control" value="" placeholder="saisissez votre nom">
                        </div>
                        <div class="mt-3">
                            <label for="prenom" class="control-label">Prenom</label>
                            <input type="text" id="prenom" name="prenom" class="form-control" value="" placeholder="saisissez votre prenom">
                        </div>
                        <div class="mt-3">
                            <label for="pseudo" class="control-label">Pseudo</label>
                            <input type="text" id="pseudo" name="pseudo" class="form-control" value="" placeholder="saisissez votre pseudo">
                        </div>
                        <div class="mt-3">
                            <label for="email" class="control-label">Email</label>
                            <input type="email" id="email" name="email" class="form-control" value="" placeholder="saisissez votre email">
                        </div>
                        <div class="mt-3">
                            <label for="pwd" class="control-label">Mot de passe</label>
                            <input type="password" id="pwd" name="pwd" class="form-control" value="" placeholder="saisissez votre password">
                        </div>
                        <div class="mt-3">
                            <label for="re_pwd" class="control-label">Repeter mot de passe</label>
                            <input type="password" id="re_pwd" name="re_pwd" class="form-control" value="" placeholder="repeter votre password">
                        </div>
                        <div class="mt-3">
                        	<span style="color:red;">
                        		<% 
                        			String mssg = (String)request.getAttribute("errosPwd");
                            		if(mssg!=null){
                            			out.print(mssg);
                            		}
                        		%>
                        	</span>
                        </div>
                        <div class="mt-3">
                        	<span style="color:red;">
                            <% 
                            
                            	String msg2 = (String)request.getAttribute("erros");
                            	if(msg2!=null){
                            		out.print(msg2);
                            	}
                            
                            %></span>
                        </div>
                        <div class="mt-4">
                            <button class="btn btn-success" type="submit" name="ti">S'inscrire</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>

</body>
</html>