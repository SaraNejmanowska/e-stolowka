<?php
// Include calendar helper functions
include_once 'functions.php';
?>

<html>
    <head>
    <meta charset="utf-8">
    <title>Tytuł strony</title>
   
    <link rel="stylesheet" href="style/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css" >


    <script src="js/jquery.min.js"></script>

   
    <script src="scripts.js"></script>



    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300&display=swap" rel="stylesheet">
    
    </head>
    <body>
        


<section>

<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">
  <span onclick="openNav()"><img src="img/menu.png"></span>
  </a>
</nav>

</section>

  
      <section >
              
      <div id="mySidenav" class="sidenav bg-danger">

        <ul>
          <li><a href="default.asp"><img src="img/home.png"><span>Pulpit</span></a></li>
          <li><a href="default.asp"><img src="img/settings.png"><span>Ustawienia</span></a></li> 
        </ul>
  
      </div>

      </section>



        
  <section>
    <div class="container-fluid">
    <div class="row home">
    

        <div class="col-7">
          <div class="shadow rounded">	<div id="calendar_div">
          <?php echo WywolajKalendarz(); ?>
          </div>
          </div>

          <div class="Dania shadow rounded">
          <div class="card-header bg-danger    text-center">
        PODGLĄD ZAMÓWIONYCH DAŃ
         </div>
          <aside class="menu__lewe text-center" id="lista_dan">
          <?php echo ZamowioneDania(); ?>		
         </aside>       
      
          </div> 
          </div>



      <div class="col-5">
		  <div class="Jadlospis full shadow rounded ">
    <div class="card-header bg-danger text-center">
    STWÓRZ JADŁOSPIS 
    </div>
    

      <aside class="menu__prawe " id="lista_dan2">
      <?php echo StworzJadlospis(); ?>		
      </aside>     

          
		</div>		
</div>
</div>
        

 </div>
</section>
    </body>
</html>