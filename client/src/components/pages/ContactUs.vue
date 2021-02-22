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
                    <small class="text-gray">({{}})</small></a
                  ></router-link
                >
              </li>
              <li class="nav-item">
                <a class="nav-link text-small" href="#" style="color:red">
                  <i class="fa fa-heart mr-1"></i
                  ><small class="text-gray"> ({{ like }})</small></a
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
              <li class="nav-item">
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
    <!--  Modal -->
    <div class="Container">
      <div class="row">
        <div class="col-sm-3"></div>

        <div class="col-sm-6" id="contactmessage">
          <h1 class="text-uppercase" style="margin-top:100px;">Contact Us</h1>
          <input
            class="form-control form-control-lg"
            v-model="email"
            type="email"
            placeholder="@example.com"
            autocomplete="off"
            required
          />
          <textarea
            class="form-control form-control-lg"
            autocomplete="off"
            v-model="message"
            rows="4"
            placeholder="Type your message ..."
            required
          ></textarea>
          <div class="col-lg-12 form-group">
            <button
              class="btn btn-primary"
              style="width:100px;color:#fff;border-radius:4px;margin-top:20px;margin-bottom:20px;float:right;"
              v-on:click="registerComment()"
            >
              Send
            </button>
          </div>
        </div>
        <div class="col-sm-3"></div>
        <div class="col-sm-12">
          <div class="mapouter">
            <div class="gmap_canvas">
              <iframe
                width="100%"
                height="300"
                id="gmap_canvas"
                src="https://maps.google.com/maps?q=Ethiopia%20bole&t=&z=13&ie=UTF8&iwloc=&output=embed"
                frameborder="0"
                scrolling="no"
                marginheight="0"
                marginwidth="0"
              ></iframe>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import userService from "../../../services/userService";
import swal from "sweetalert";
export default {
  data() {
    return {
      email: "",
      message: "",
    };
  },
  methods: {
    async registerComment() {
        await userService.registerComments({
        email: this.email,
        message: this.message,
      })
      if(this.email !="" || this.message !=""){
        this.message = ""
        this.email = ""
        swal("Thank you , Message Sent" ,{ icon: "success"})
      }

    },
  }
};
</script>
