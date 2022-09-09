<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
              <a class="nav-link active" href="Utenti?pagina=1">Lettura utenti</a>
            </div>
          </div>
        </div>
      </nav>

    <div class="container">
        <form name="formUpdate" action="DoUpdate" method="post">
            <div class="mb-3">
                
                <input type="hidden" name="id" readonly="readonly" value="<%=request.getParameter("id")%>" /><br/>

              <label for="exampleInputEmail1" class="form-label">Nome</label>
              <input type="text" name="nome" value="<%=request.getParameter("nome")%>" /><br/>
              <div id="emailHelp" class="form-text">Inserisci il nome modificato.</div>
            </div>

            <div class="mb-3">
              <label for="exampleInputEmail1" class="form-label">Cognome</label>
              <input type="text" name="cognome" value="<%=request.getParameter("cognome")%>" /><br/>
              <div id="emailHelp" class="form-text">Inserisci il cognome modificato.</div>
            </div>

            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Età</label>
                <input type="number" name="eta" value="<%=request.getParameter("eta")%>"/><br/>
                <div id="emailHelp" class="form-text">Inserisci l'età modificata.</div>
              </div>

            <button type="submit" class="btn btn-primary">Modifica</button>
          </form>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  

</body>
</html>