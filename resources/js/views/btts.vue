<template>
    <div>
        <span v-show="show" style="width:100%;">
            <Header />
            <Index />
            <Footer />
        </span>
    </div>
</template>
<script>
import Footer from "../components/footer";
import Index from "../components/btts/index";
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
        this.show;
        setTimeout(() => {
            this.show = true;
        }, 700);
    }
};
</script>
