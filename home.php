 <!-- Masthead-->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end mb-4 page-title">
                    	<h3 class="text-white">Bienvenue dans <?php echo $_SESSION['setting_name']; ?></h3>
                        <hr class="divider my-4" />
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="#menu">Commander</a>

                    </div>
                    
                </div>
            </div>
        </header>
        <br/>        

    <!-- ajout -->
    <div class="text-center">

    <div class="spinner-grow text-primary" role="status" >
  <span class="sr-only">Loading...</span>
</div>

<div class="spinner-grow text-secondary" role="status">
  <span class="sr-only">Loading...</span>
</div>

<div class="spinner-grow text-success" role="status">
  <span class="sr-only">Loading...</span>
</div>

<div class="spinner-grow text-danger" role="status">
  <span class="sr-only">Loading...</span>
</div>

<div class="spinner-grow text-warning" role="status">
  <span class="sr-only">Loading...</span>
</div>

<div class="spinner-grow text-primary" role="status">
  <span class="sr-only">Loading...</span>
</div>

<div class="spinner-grow text-secondary" role="status">
  <span class="sr-only">Loading...</span>
</div>

<div class="spinner-grow text-success" role="status">
  <span class="sr-only">Loading...</span>
</div>

<div class="spinner-grow text-danger" role="status">
  <span class="sr-only">Loading...</span>
</div>

<div class="spinner-grow text-warning" role="status">
  <span class="sr-only">Loading...</span>
</div>
</div>

    <!-- fin d'ajout -->



	<section class="page-section" id="menu">
        <div id="menu-field" class="card-deck">
                <?php 
                    include('admin/db_connect.php');
                    $qry = $conn->query("SELECT * FROM  product_list order by rand() ");
                    while($row = $qry->fetch_assoc()):
                    ?>

                    <div class="col-lg-3">
                     <div class="card menu-item">
                        <img src="assets/img/<?php echo $row['img_path'] ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                          <h5 class="card-title"><?php echo $row['name'] ?></h5>
                          <p class="card-text truncate"><?php echo $row['description'] ?></p>

                          <p class="card-text truncate"><?php echo $row['price'] ?>  Fcfa</p>

                          <div class="text-center">
                              <button class="btn btn-sm btn-outline-primary view_prod btn-block" data-id=<?php echo $row['id'] ?>>
                              <i class="fa fa-eye"></i> Voir</button>
                              
                          </div>
                        </div>
                        
                      </div>
                      </div>
                    <?php endwhile; ?>
        </div>   
    </section>
    <script>
        
        $('.view_prod').click(function(){
            uni_modal_right('Produit','view_prod.php?id='+$(this).attr('data-id'))
        })
    </script>
	
