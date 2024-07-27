<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>

<main>
    <!-- HERO -->
    <div class="nero">
      <div class="nero__heading">
        <span class="nero__bold">Power & Handtools</span>
      </div>
      <p class="nero__text">
      </p>
    </div>
  </main>


  <div id="content" class="container"><!-- container Starts -->

<div class="row"><!-- row Starts -->

 <?php
 
 

$specific_p_cat_id = 14;
getProductsByCategory($specific_p_cat_id);

 
 
 ?>


</div>
</div>

<?php

include("includes/footer.php");

?>