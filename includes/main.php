</head>

<body>

  <header class="page-header">
    <!-- topline -->
    <div class="page-header__topline">
      <div class="container clearfix">

        <div class="currency">
          <a class="currency__change" href="customer/my_account.php?my_orders">
          <?php
          if(!isset($_SESSION['customer_email'])){
          echo "Welcome :Guest"; 
          }
          else
          { 
              echo "Welcome : " . $_SESSION['customer_email'] . "";
            }
?>
          </a>
        </div>

        <div class="basket">
          <a href="cart.php" class="btn btn--basket">
            <i class="icon-basket"></i>
            <?php items(); ?> items
          </a>
        </div>
        
        
        <ul class="login">

<li class="login__item">
<?php
if(!isset($_SESSION['customer_email'])){
  echo '<a href="customer_register.php" class="login__link">Register</a>';
} 
  else
  { 
      echo '<a href="customer/my_account.php?my_orders" class="login__link">My Account</a>';
  }   
?>  
</li>


<li class="login__item">
<?php
if(!isset($_SESSION['customer_email'])){
  echo '<a href="checkout.php" class="login__link">Sign In</a>';
} 
  else
  { 
      echo '<a href="./logout.php" class="login__link">Logout</a>';
  }   
?>  
  
</li>
</ul>
      
      </div>
    </div>
    <!-- bottomline -->
    <div class="page-header__bottomline">
      <div class="container clearfix">

        <div class="logo">
          <a class="logo__link" href="index.php">
            <img class="logo__img" src="images/logo1.png" alt="Avenue fashion logotype" width="237" height="19">
          </a>
        </div>

        <nav class="main-nav">
          <ul class="categories">

          <li class="categories__item">
              <a class="categories__link" href="#">
                T&H
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                    <div class="dropdown__heading">Tools & Home Improvements</div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="electricals.php" class="dropdown__link">Electricals</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="power&handtools.php" class="dropdown__link">Power & Handtools</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="cleaningsupplies.php" class="dropdown__link">Cleaning Supplies</a>
                      </li>
                    </ul>
                  </div>
                </div>
             

              </div>

            </li>

            <li class="categories__item">
              <a class="categories__link" href="customer/my_account.php?my_orders">
                H&F
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                  <div class="dropdown__heading">Home & Furniture</div>
                    <ul class="dropdown__items">
                    <li class="dropdown__item">
                        <a href="bedding.php" class="dropdown__link">Bedding</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="softfurnishing.php" class="dropdown__link">Soft Furnishing</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="homedecor.php" class="dropdown__link">Home Decor</a>
                      </li>
                      
                    </ul>
                  </div>
                 
             

              </div>

            </li>

            <li class="categories__item">
              <a class="categories__link categories__link--active" href="shop.php">
                Shop
              </a>
            </li>

            <li class="categories__item">
              <a class="categories__link" href="customer/my_account.php?my_orders">
                C&C
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                  <div class="dropdown__heading">Crockery & Cookware</div>
                    <ul class="dropdown__items">
                    <li class="dropdown__item">
                        <a href="ceramics.php" class="dropdown__link">Ceramics</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="unbreakables.php" class="dropdown__link">Unbreakables</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="bakewares.php" class="dropdown__link">Bakewares</a>
                      </li>
                      
                    </ul>
                  </div>
                 
             

              </div>

            </li>
            <li class="categories__item">
              <a class="categories__link" href="customer/my_account.php?my_orders">
              PF
                <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                  <div class="dropdown__heading">Pocket Friendly</div>
                    <ul class="dropdown__items">
                    <li class="dropdown__item">
                        <a href="under299.php" class="dropdown__link">Under 299</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="under499.php" class="dropdown__link">Under 499</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="under999.php" class="dropdown__link">Under 999</a>
                      </li>
                      
                    </ul>
                  </div>
                 
             

              </div>

            </li>
          <li class="categories__item">
              <a class="categories__link" href="customer/my_account.php?my_orders">
                My Account </a> </li> /*
               <i class="icon-down-open-1"></i>
              </a>
              <div class="dropdown dropdown--lookbook">
                <div class="clearfix">
                  <div class="dropdown__half">
                    <div class="dropdown__heading">Account Settings</div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">My Wishlist</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">My Orders</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">View Shopping Cart</a>
                      </li>
                    </ul>
                  </div>
                  <div class="dropdown__half">
                    <div class="dropdown__heading"></div>
                    <ul class="dropdown__items">
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Edit Your Account</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Change Password</a>
                      </li>
                      <li class="dropdown__item">
                        <a href="#" class="dropdown__link">Delete Account</a>
                      </li>
                    </ul>
                  </div>
                </div>
             

              </div>

            </li> */

          </ul>
        </nav>
      </div>
    </div>
  </header>