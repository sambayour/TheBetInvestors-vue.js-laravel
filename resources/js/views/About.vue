<template>
    <div class="body">
        <span v-show="show" style="width:100%;">
            <Header />
            <Index />
        </span>
        <span v-show="show == false"> </span>
    </div>
</template>
<script>
import Header from "../components/header";
import Index from "../components/About/index";
export default {
    data() {
        return {
            show: false
        };
    },
    components: {
        Index,
        Header
    },
    beforeMount() {
        setTimeout(() => {
            this.show = true;
        }, 700);
    }
};
</script>

<style scoped>
body {
    background-color: #e2e2dc;
}
#btn-arrow {
    float: right;
    background: white;
    width: 100px;
}
</style>
