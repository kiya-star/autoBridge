<template>
  <div>
    <!-- navbar-->
    <header class="header bg-white newHeader">
      <div class="container px-0 px-lg-3">
        <nav class="navbar navbar-expand-lg navbar-light py-3 px-lg-0">
          <router-link
            :to="{ name: 'Home' }"
            style="text-decoration: none; pointer:hand"
          >
            <a
              ><span class="font-weight-bold text-uppercase text-dark"
                >Bridge</span
              ></a
            >
          </router-link>

          <button
            class="navbar-toggler navbar-toggler-right"
            type="button"
            data-toggle="collapse"
            data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <router-link
                  :to="{ name: 'Cart' }"
                  style="text-decoration: none;"
                >
                  <a class="nav-link text-small">
                    <i
                      class="fa fa-cart-plus mr-1 text-gray"
                      aria-hidden="true"
                    ></i>
                    <small class="text-gray">(2)</small></a
                  ></router-link
                >
              </li>
              <li class="nav-item">
                <a class="nav-link text-small" href="#" style="color:red">
                  <i class="fa fa-heart mr-1"></i
                  ><small class="text-gray"> (0)</small></a
                >
              </li>
              <li class="nav-item">
                <router-link
                  :to="{ name: 'Login' }"
                  style="text-decoration: none;"
                >
                  <a class="nav-link text-small" href="#">
                    <i class=" mr-1 text-gray"></i>Account</a
                  >
                </router-link>
              </li>
              <li class="nav-item ">
                <router-link
                  :to="{ name: 'Contact' }"
                  style="text-decoration: none;"
                >
                  <a class="nav-link text-small" href="#">
                    <i class=" mr-1 text-gray"></i>Contact us</a
                  >
                </router-link>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </header>
  </div>
</template>
<script>
export default {
  methods: {
    // reloadpage(){
    //   location.reload('http://localhost:8080/');
    // }
  },
};
</script>
