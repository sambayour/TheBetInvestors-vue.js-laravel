<template>
    <div>
        <span v-show="show" style="width:100%;">
            <Header />
            <Index />
            <Footer />
        </span>
        <span v-show="show == false"></span>
    </div>
</template>

<script>
import Index from "../components/faq/index";
import Header from "../components/header";

export default {
    data() {
        return {
            show: false
        };
    },
    components: {
        Header,
        Index
    },
    mounted() {
        setTimeout(() => {
            this.show = true;
        }, 700);
    }
};
</script>
<style scoped></style>
