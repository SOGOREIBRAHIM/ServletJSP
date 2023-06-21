<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Connexion</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">

</head>
<body>

	<%@ include file="navbar.jsp" %>

<!--debut du formulaire  -->
	 <div class="container mt-5 mt-5 col-md-4">
        <div class="card">
            <div class="card-header"><h3>Connexion</h3></div>
            <div class="card-body">
                <div class="container mt-3">
                    <form method="post" action="login">
                        
                        <div class="mt-3">
                            <label for="pseudo" class="control-label">Pseudo</label>
                            <input type="text" id="pseudo" name="pseudo" class="form-control" value="" placeholder="saisissez votre pseudo">
                        </div>
                        <div class="mt-3">
                            <label for="pwd" class="control-label">Mot de passe</label>
                            <input type="password" id="pwd" name="pwd" class="form-control" value="" placeholder="saisissez votre password">
                        </div> 
                        <div>
                        	<span style="color:red;">
                            <% 
                            
                            	String msg = (String)request.getAttribute("erros");
                            	if(msg!=null){
                            		out.print(msg);
                            	}
                            
                            %></span>
                        </div>                      
                        <div class="mt-4">
                            <button class="btn btn-success" type="submit">Se connecter</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"  crossorigin="anonymous"></script>
</body>
</html>