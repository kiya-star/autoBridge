<template>
    <div>
        <Header />
        <LoginHeader />
        <Register />
        <Footer />
    </div>
</template>
<script>
import Header from "../../components/HeaderNav";
import LoginHeader from "../../components/loginheader";
import Register from "../../components/Register";
import Footer from "../../components/Footer";

export default {
    components:{
        Header,
        LoginHeader,
        Register,
        Footer
        

    }
}
</script>