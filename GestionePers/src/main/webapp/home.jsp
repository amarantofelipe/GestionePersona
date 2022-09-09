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
              <a class="nav-link active" aria-current="page" href="#">Home</a>
              <a class="nav-link" href="index.html">Inserimento utenti</a>
              <a class="nav-link" href="Utenti?page=1">Lettura utenti</a>
            </div>
          </div>
        </div>
      </nav>

    <div class="container">

        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="Google-Logo.png" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="logo.png" class="d-block w-90 text-center">
              </div>
            </div>

            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>

            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
        </div>

        <div style="text-align: center;" class="m-4">
            
            <p class="fs-1">Chi siamo</p>
        </div>

        <div class="card-group m-4 shadow-none p-3 mb-5 bg-light">
            <div class="card">
              <img src="About_1.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Chi siamo</h5>
                <p class="card-text">Da oltre 20 anni siamo attivi nel settore industriale della manutenzione meccanica, elettrostrumentale, ingegneria di macchine ed impianti nel comparto Automotive, Oil&Gas e Siderurgico. Oggi si propone anche come partner per lo sviluppo di soluzioni complete e servizi professionali in ambito IT.</p>
              </div>
            </div>
            <div class="card">
              <img src="About_2.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">L'azienda</h5>
                <p class="card-text">Tutti i collaboratori hanno una passione per le sfide, il miglioramento continuo e l'eccellenza, attribuendo un valore fondamentale alla persona, all'ambiente, all'integrità.</p>
              </div>
            </div>
            <div class="card">
              <img src="About_3.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Competenze</h5>
                <p class="card-text">Lo sviluppo di capacità e competenze e la creazione di un ambiente di lavoro che offra a tutti le medesime opportunità, rappresentiamo le basi fondanti per il successo dell'impresa.</p>
              </div>
            </div>
          </div>

          <div style="text-align: center;" class="m-4">
            <p class="fs-1">Le nostre referenze</p>
        </div>


        <div class="card-group m-4 shadow-none p-3 mb-5 bg-light">
            <div class="card">
              <img src="accenture.jpg" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Accenture</h5>
                <p class="card-text"></p>
              </div>
            </div>
            <div class="card">
              <img src="intesa.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Gruppo Intesa San Paolo</h5>
                <p class="card-text"></p>
              </div>
            </div>
            <div class="card">
              <img src="allianz.png" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">Allianz assicurazioni</h5>
                <p class="card-text"></p>
              </div>
            </div>
          </div>
    </div>
    
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
  
    
    <script type="text/javascript">
    
    	var Msg ='<%=session.getAttribute("inserimento")%>';
    		if (Msg == "true") {
    			
    			function alertName() {
    				
    				Swal.fire (
    					
    					'Ottimo lavoro',
    					'Persona con successo',
    					'success'
    				)
    			}
    		}
    		<%session.setAttribute("inserimento", false);%>
    
    </script>
    
	<script type="text/javascript"> window.onload = alertName; </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
  	

</body>
</html>