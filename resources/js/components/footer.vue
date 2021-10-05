<template>
  <div>
    <div>
      <footer class="footer-area bg_cover" style="background-image: url(/images/footer-bg.jpg)">
        <div class="container">
          <div class="footer-widget pt-30 pb-70">
            <div class="row">
              <div class="col-lg-4 col-sm-6 order-sm-1 order-lg-1">
                <div class="footer-about pt-40">
                  <router-link to="#">
                    <img src="/images/logo.png" alt="Logo" />
                  </router-link>
                  <p class="text">
                    <img src="/images/r18.png" /> Adults only. Don't let gambling become a problem in your life. Check the
                    <a
                      href="https://www.begambleaware.org/"
                      target="_blank"
                    >responsible gamble</a> page for more info.
                  </p>
                </div>
              </div>
              <div class="col-lg-4 col-sm-6 order-sm-4 order-lg-2">
                <div class="footer-link pt-40">
                  <div class="footer-title">
                    <h5 class="title">Links</h5>
                  </div>
                  <ul>
                    <li>
                      <router-link to="/faq">
                        Frequently Asked
                        Questions
                      </router-link>
                    </li>
                    <li>
                      <router-link to="/terms">
                        Terms and
                        Conditions
                      </router-link>
                    </li>
                    <li>
                      <a href="https://www.begambleaware.org/" target="_blank">Responsible Gambling</a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-lg-4 col-sm-6 order-sm-2 order-lg-3">
                <div class="footer-contact pt-40">
                  <div class="footer-title">
                    <h5 class="title">Reach us</h5>
                  </div>
                  <div class="contact pt-10">
                    <p class="text">
                      <a href="mailto:hello@thebetinvestors.com">hello@thebetinvestors.com</a>
                    </p>
                    <p class="text">+2348084305464</p>
                    <ul class="social mt-40" v-for="social in socials" :key="social.id">
                      <li>
                        <a :href="social.facebook">
                          <i class="lni-facebook-filled"></i>
                        </a>
                      </li>
                      <li>
                        <a :href="social.twitter">
                          <i class="lni-twitter"></i>
                        </a>
                      </li>
                      <li>
                        <a :href="social.telegram">
                          <i class="lni-telegram"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="footer-copyright text-center">
            <p class="text">
              © {{ new Date().getFullYear() }} All Rights
              Reserved. TheBetInvestors.
              <br />Developed and Managed by
              <a href="https://samuelolubayo.website" target="_blank">Sam</a>
            </p>
          </div>
        </div>
      </footer>

      <!-- end of footer -->
    </div>

    <router-link to="#" class="back-to-top" style="display: block;">
      <i class="lni-chevron-up"></i>
    </router-link>

    <!-- jQuery -->
  </div>
</template>
<script>
import { request } from "../mixins/sendRequest";
import axios from "axios";
export default {
  data() {
    return {
      socials: [],
    };
  },
  components: {},

  beforeMount() {
    setTimeout(() => {
      this.show = true;
    }, 700);
    this.$forceUpdate();
  },
  mounted() {
    this.loadSocials();
  },
  mixins: [request],
};
</script>
