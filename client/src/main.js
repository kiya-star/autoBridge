import Vue from 'vue'
import Vuelidate from "vuelidate"
import App from './App.vue'
import router from './router'
import store from './store'
import "jquery";
import "bootstrap";
import "lightbox2";
import "nouislider";

Vue.use(Vuelidate)
    //some import left here
new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')