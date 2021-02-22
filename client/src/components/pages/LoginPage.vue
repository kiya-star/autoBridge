<template>
    <div>
        <Header />
        <LoginHeader />
        <Login />
        <Footer />
    </div>
</template>
<script>
import Header from "../../components/HeaderNav";
import LoginHeader from "../../components/loginheader";
import Login from "../../components/Login";
import Footer from "../../components/Footer";


export default {
    components:{
        Header,
        LoginHeader,
        Login,
        Footer

    }
}
</script>