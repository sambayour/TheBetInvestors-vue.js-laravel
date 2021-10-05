<template>
    <div>
        <span v-show="show" style="width:100%;">
            <Header />
            <Index />
            <Footer />
        </span>
        <span v-show="show == false"> </span>
    </div>
</template>
<script>
import Footer from "../components/footer";
import Index from "../components/Administrator/index";
import Header from "../components/header";
export default {
    data() {
        return {
            show: false
        };
    },

    components: {
        Footer,
        Header,
        Index
    },
    beforeMount() {
        setTimeout(() => {
            this.show = true;
        }, 700);
    }
};
</script>
