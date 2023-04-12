
<?php
 session_start();
 include('../header.php');
 include('../admin/db_connect.php');
?>
      <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="./"><?php echo $_SESSION['setting_name'] ?></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.php?page=home">Acceuil</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.php?page=cart_list"><span> <span class="badge badge-danger item_count">0</span> <i class="fa fa-shopping-cart"></i>  </span>Panier</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="index.php?page=about">A propos de nous</a></li>
                        <?php if(isset($_SESSION['login_user_id'])): ?>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="admin/ajax.php?action=logout2"><?php echo "Bienvenue ". $_SESSION['login_first_name'].' '.$_SESSION['login_last_name'] ?> <i class="fa fa-power-off"></i></a></li>
                      <?php else: ?>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="javascript:void(0)" id="login_now">Login</a></li>
                      <?php endif; ?>
                    </ul>
                </div>
            </div>
        </nav><br><br>



<?php
// Création de noms abrégés pour les variables 
$nom = $_POST["last_name"];
$prenom = $_POST["first_name"];
$email =  trim ($_POST["email"]);
$contact=($_POST["mobile"]);
$adress=($_POST["address"]); 
?>

Nom : <?php echo $nom; ?><br>
Prenom : <?php echo $prenom; ?><br>
adress de livraison : <?php echo $adress; ?><br>
Contact :  <?php echo $contact; ?><br><br><br>

    <h1><pre>                Details de votre commande</pre> </h1><br>

<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">Quantité</th>
      <th scope="col">Images</th>
      <th scope="col">nom_produit</th>
      <th scope="col">Prix</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>Total</td>
    </tr>
  </tbody>

</table><br><br>

<footer class="bg-light py-5">
            <div class="container">
              <div class="small text-center text-muted">Copyright © 2022 - kledjessrestau@CD </div>
            </div>
        </footer>
        
       <?php include('footer.php') ?>
       
</body>
</html>

