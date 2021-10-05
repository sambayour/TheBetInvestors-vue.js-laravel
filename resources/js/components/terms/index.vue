<template>
  <div class="container">
    <div class="col-lg-12">
      <div class="blog-details-content mt-50">
        <br />
        <br />
        <br />
        <h3 class="details-title">Terms and Conditions</h3>
        <p class="text" v-for="term in terms" :key="term.id">
          <span v-html="term.body"></span>
        </p>
        <blockquote class="blockquote">
          <p class="text">
            <i class="fa fa-quote-left"></i> It's important to
            gamble responsibly, Bet with you head not over it. 18+
            years and over
            <i
              class="fa fa-quote-right"
            ></i>
          </p>
        </blockquote>
      </div>
    </div>
  </div>
</template>
<script>
import { request } from "../../mixins/sendRequest";
export default {
  name: "TermsIndex",
  components: {},
  data() {
    return {
      terms: []
    };
  },
  mounted() {
    this.loadUserTerms();
  },
  mixins: [request],
  methods: {}
};
</script>

<style scoped></style>
