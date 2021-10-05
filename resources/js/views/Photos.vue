<template>
  <div>
    <span v-show="show">
      <Header />
      <Index />
      <Footer />
    </span>
    <span v-show="show==false"></span>
  </div>
</template>


<script>
import Index from "../components/Gallery/index";
import Header from "../components/header";
import Footer from "../components/footer";
export default {
  data() {
    return {
      show: false
    };
  },
  components: {
    Header,
    Index,
    Footer
  },
  beforeMount() {
    this.show = false;
    setTimeout(() => {
      this.show = true;
    }, 2000);
  }
};
</script>