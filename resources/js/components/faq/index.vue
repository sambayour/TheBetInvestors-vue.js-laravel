<template>
  <div>
    <!-- The Main Wrapper -->
    <!-- <div class="page text-center"> -->
    <div class="page">
      <section class="faq-area pt-70">
        <div class="container">
          <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
              <div
                class="faq-content mt-45 wow fadeIn"
                data-wow-duration="1s"
                data-wow-delay="0.4s"
                style="visibility: visible; animation-duration: 1s; animation-delay: 0.4s; animation-name: fadeIn;"
              >
                <div class="section-title">
                  <h6 class="sub-title">Faq</h6>
                  <h4 class="title">
                    Frequently Asked
                    <span>
                      Question
                      <br />On TheBetInvestors
                    </span>
                  </h4>
                </div>
                <div class="faq-accordion">
                  <div class="accordion" id="accordionExample" v-for="faq in faqs" :key="faq.id">
                    <!-- {{ faq.id | toWords | capitalize }} -->
                    <div class="card">
                      <div class="card-header" :id="'heading' + faq.num">
                        <a
                          href="#"
                          data-toggle="collapse"
                          :data-target="
                                                        '#collapse' + faq.num
                                                    "
                          aria-expanded="false"
                          :aria-controls="
                                                        'collapse' + faq.num
                                                    "
                          class
                        >{{ faq.title }}</a>
                      </div>
                      <div
                        :id="'collapse' + faq.num"
                        class="collapse show"
                        :aria-labelledby="
                                                    'heading' + faq.num
                                                "
                        data-parent="#accordionExample"
                        style
                      >
                        <div class="card-body">
                          <p class="text">
                            <span v-html="faq.body"></span>
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-2"></div>
          </div>
        </div>
      </section>
      <!--========================================================
                             FOOTER
      ==========================================================-->
      <Footer />
    </div>
  </div>
</template>
<style lang="scss" scoped></style>
<script>
import { request } from "../../mixins/sendRequest";
import Footer from "../footer";
// var converter = require("number-to-words");
export default {
  name: "FaqIndex",
  components: {
    Footer
  },
  data() {
    return {
      faqs: []
    };
  },
  mounted() {
    this.loadFaq();
  },
  // filters: {
  //     toWords: function(value) {
  //         if (!value) return "";
  //         return converter.toWords(value);
  //     }
  // },
  mixins: [request],
  methods: {}
};
</script>
