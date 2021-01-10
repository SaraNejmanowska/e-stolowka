<?php
// Include calendar helper functions
include_once 'functions.php';
?>

<html>
    <head>
    <meta charset="utf-8">
    <title>Tytuł strony</title>

    <link rel="stylesheet" href="style/css/bootstrap.min.css">
    <link rel="stylesheet" href="style/style1.css" >
    <script src="scripts.js"></script>
    <script src="js/jquery.min.js"></script>
   
  
    </head>
    <body>
        


<section>

  <div id="mySidenav2" class="sidenav2">
 <!-- Use any element to open the sidenav -->
 <span onclick="openNav()"><img src="img/menu.png"></span>
  </div>
</section>

  
      <section >
              
      <div id="mySidenav" class="sidenav">

        <ul>
          <li><a href="default.asp"><img src="img/home.png"><span>Home</span></a></li>
          <li><a href="default.asp"><img src="img/home.png"><span>Home</span></a></li>
          <li><a href="default.asp"><img src="img/home.png"><span>Home</span></a></li>
           <li><a href="default.asp"><img src="img/home.png"><span>Home</span></a></li>
        </ul>
  
  
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
      </div>

      </section>



        
  <section>
    <div class="container-fluid">
    <div class="row">
    

        <div class="col-6">
          <div class="Kalendarz shadow rounded">	<div id="calendar_div">
          <?php echo WywolajKalendarz(); ?>
          </div>
          </div>

          <div class="Dania shadow rounded">
         
          <aside class="menu__ " id="lista_dan">
          <?php echo ZamowioneDania(); ?>		
         </aside>       
      
          </div> 
          </div>



      <div class="col-6">
		  <div class="full shadow rounded ">
    

      <aside class="menu__ " id="lista_dan2">
      <?php echo StworzJadlospis(); ?>		
      </aside>     

          
		</div>		
</div>
</div>
        

 </div>
</section>
    </body>
</html>