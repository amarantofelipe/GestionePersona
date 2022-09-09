<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js" integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK" crossorigin="anonymous"></script>
  </head>
  <body>

    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="logo.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                Gestionale
              </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
              <a class="nav-link" aria-current="page" href="home.jsp">Home</a>
              <a class="nav-link" href="index.html">Inserimento utenti</a>
              <a class="nav-link active" href="Utenti">Lettura utenti</a>
            </div>
          </div>
        </div>
      </nav>
      

   <div class="container">

      <table class="table">
        <thead>
          <tr>
            
            <th scope="col">NOME</th>
            <th scope="col">COGNOME</th>
            <th scope="col">ETÀ</th>
            <th scope="col">Elimina</th>
            <th scope="col">Modifica</th>
          </tr>
        </thead>
        <tbody>
            <c:forEach items="${listaPersone}" var="persona">
			
                <tr>
                
                    <td>${persona.nome}</td>
                    <td>${persona.cognome}</td>
                    <td>${persona.eta}</td>
                    <td><a href="Cancellazione?id=${persona.id}" button type="button" class="btn btn-danger"> Elimina utente</a></td>
                    
                    
                    <td><a href="modifica.jsp?id=${persona.id}&nome=${persona.nome}&cognome=${persona.cognome}&eta=${persona.eta}" button type="button" class="btn btn-success"> Modifica utente</a></td>

                 
                </tr>
                
            </c:forEach>
            
        </tbody>
      </table>
      
     
      
		 <nav aria-label="...">
		  	<ul class="pagination">
		    
		    <c:if test="${page > 1}">
						<li class="page-item"><a class="page-link"
							href="Utenti?page=1">Primo</a></li>
						<li class="page-item"><a class="page-link"
							href="Utenti?page=${page - 1}">Previous</a></li>
					</c:if>
					
					
					
					<c:if test="${totPag <= 10}">
						<c:forEach begin="0" end="${totPag}" step="1" var="i">
							<li class="page-item"><a class="page-link" href="Utenti?page=${i + 1}"> ${(i + 1)}</a></li>
					</c:forEach>
					</c:if>
					
					
					<c:if test="${totPag > 10}">
						<c:choose>
							    
							    <c:when test="${page <= 4}">
							        <c:forEach begin="1" end="8" step="1" var="i">
										<li class="page-item"><a class="page-link" href="Utenti?page=${i}"> ${i}</a></li>
									</c:forEach>
							    </c:when>
							    
							    <c:when test="${page > 4 && page < totPag - 4}">
							    	<li class="page-item disabled"><a class="page-link" href="#">...</a></li>
							    	
							        <c:forEach begin="${page - 2}" end="${page + 2}" step="1" var="i">
										<li class="page-item"><a class="page-link" href="Utenti?page=${i}"> ${i}</a></li>
									</c:forEach>
									
									<li class="page-item disabled"><a class="page-link" href="#">...</a></li>
							    </c:when>    
							    
							    <c:otherwise>
							       <c:forEach begin="${totPag - 6}" end="${totPag}" step="1" var="i">
										<li class="page-item"><a class="page-link" href="Utenti?page=${i}"> ${i}</a></li>
									</c:forEach>
									
									<c:if test="${totPagFloat % 1 != 0}">
										<li class="page-item"><a class="page-link" href="Utenti?page=${totPag +1}"> ${totPag +1}</a></li>
									</c:if>
							    </c:otherwise>
							</c:choose>
					</c:if>


					
					<c:if test="${totPagFloat % 1 != 0}">
						
						<c:if test="${page < (totPag + 1) && page == totPag}">
							<li class="page-item"><a class="page-link" href="Utenti?page=${page + 1}">Next</a></li>
							<li class="page-item"><a class="page-link" href="Utenti?page=${totPag + 1}">Last</a></li>	
						</c:if>
						
					</c:if>

					<c:if test="${page < totPag}">
						<li class="page-item"><a class="page-link"
							href="Utenti?page=${page + 1}">Next</a></li>
						
							<c:choose>
							    <c:when test="${totPagFloat % 1 != 0}">
							        <li class="page-item"><a class="page-link" href="Utenti?page=${totPag + 1}">Last</a></li>
							    </c:when>    
							    <c:otherwise>
							        <li class="page-item"><a class="page-link" href="Utenti?page=${totPag}">Last</a></li>
							    </c:otherwise>
							</c:choose>
					</c:if>


		    
		    
		    
		  </ul>
		</nav>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>

   </div>
  

</body>
</html>