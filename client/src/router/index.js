import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../components/HomePage.vue'
import notfound from '../components/404.vue'


Vue.use(VueRouter)

const routes = [{

    path: '*',
    component: notfound
}, {

    path: '/',
    name: 'Home',
    component: Home
}, ]


const router = new VueRouter({
    routes,
    mode: 'history'
})

export default router