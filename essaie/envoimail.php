<?php

// Création de noms abrégés pour les variables 
$nom = $_POST["last_name"];
$prenom = $_POST["first_name"];
$email =  trim ($_POST["email"]);
$contact=($_POST["mobile"]);
$adress=($_POST["address"]);
$commentaire = "Votre commande a été bien Enregistre merci de bien patiente";

// Initialisation de quelques informations statiques
$adresse_dest =$email ;
$sujet = "Online Food Ordering System";
$contenu_message = "Nom & Prenom : " . $nom . " ". $prenom ."\n" .
"Email client : ". $email . "\n" .$commentaire;

$adresse_exp ="bahabdoulkarim20@gmail.com";
// Appel de la fonction mail() pour envoyer le courrier 

if(mail($adresse_dest, $sujet, $contenu_message, $adresse_exp)){
    session_start();
    include('headermail.php');
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
<br><br>

Nom : <?php echo $nom; ?><br>
Prenom : <?php echo $prenom; ?><br>
adress de livraison : <?php echo $adress; ?><br>
Contact :  <?php echo $contact; ?><br><br><br>

    <h1><pre>                Details de votre commande</pre> </h1>
<table class="table table-bordered">

<thead>
    <tr>
      <th scope="col">Quantité</th>
      <th scope="col">Images</th>
      <th scope="col">nom_produit</th>
      <th scope="col">Prix Unitaire</th>
    </tr>
  </thead>
   <?php 
     	if(isset($_SESSION['login_user_id'])){
        $data = "where c.user_id = '".$_SESSION['login_user_id']."' ";	
      }else{
        $ip = ((isset($_SERVER['HTTP_CLIENT_IP']) ? $_SERVER['HTTP_CLIENT_IP'] : isset($_SERVER['HTTP_X_FORWARDED_FOR'])) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR']);
        $data = "where c.client_ip = '".$ip."' ";
      }
				$total = 0;
				$get = $conn->query("SELECT *,c.id as cid FROM cart c inner join product_list p on p.id = c.product_id ".$data);
				while($row= $get->fetch_assoc()):
					$total += ($row['qty'] * $row['price']);
          ?>
  
  <tbody>
    <tr>
      <th scope="row"><?php echo $row['qty'] ?></th>
      <td >
			  <img  src="../assets/img/<?php echo $row['img_path'] ?>" alt="HNNHN"></td>
      <td><?php echo $row['name'] ?></td>
      <td><?php echo number_format($row['price'],2) ?> </td>
    </tr>
      </br>
    
  </tbody>
  <?php endwhile; ?>

</table><br><br>

<footer class="bg-light py-5">
            <div class="container">
              <div class="small text-center text-muted">Copyright © 2022 - kledjessrestau@CD </div>
            </div>
        </footer>
        
       <?php include('../footer.php'); ?>
       
</body>

 <?php }
 else {
        echo "Erreur";
}
?>