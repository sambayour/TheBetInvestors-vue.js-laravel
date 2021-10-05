<template>
  <div class="sb-nav-fixed">
    <Nav />
    <div id="layoutSidenav">
      <div id="layoutSidenav_nav">
        <Menu />
      </div>
      <div id="layoutSidenav_content">
        <main>
          <div class="container-fluid">
            <h1 class="mt-4">
              {{ get_user_detail.username | capitalize }}
              Dashboard
            </h1>
            <ol class="breadcrumb mb-4">
              <li class="breadcrumb-item active">Dashboard</li>
            </ol>
            <div class="row">
              <div class="col-xl-6">
                <div class="card">
                  <div class="card-body">
                    <iframe
                      id="gframe"
                      width="600"
                      height="371"
                      seamless
                      frameborder="0"
                      scrolling="no"
                      src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQwIri4IuD5Y_CnoWrhUZYFEwytmxfq4__lGFBAaUME9IKElx8_KFuoyLYzimwkfWtzUFs7_dbEewkh/pubchart?oid=1789741868&amp;format=interactive"
                    ></iframe>
                  </div>
                </div>
              </div>
              <div class="col-xl-6">
                <div class="card">
                  <div class="card-body">
                    <iframe
                      id="gframe"
                      width="600"
                      height="371"
                      seamless
                      frameborder="0"
                      scrolling="no"
                      src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQwIri4IuD5Y_CnoWrhUZYFEwytmxfq4__lGFBAaUME9IKElx8_KFuoyLYzimwkfWtzUFs7_dbEewkh/pubchart?oid=1072517898&amp;format=interactive"
                    ></iframe>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-xl-6">
                <div class="card">
                  <div class="card-body">
                    <iframe
                      id="gframe"
                      width="600"
                      height="371"
                      seamless
                      frameborder="0"
                      scrolling="no"
                      src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQwIri4IuD5Y_CnoWrhUZYFEwytmxfq4__lGFBAaUME9IKElx8_KFuoyLYzimwkfWtzUFs7_dbEewkh/pubchart?oid=400278289&amp;format=interactive"
                    ></iframe>
                  </div>
                </div>
              </div>
              <div class="col-xl-6">
                <div class="card">
                  <div class="card-body">
                    <iframe
                      id="gframe"
                      width="600"
                      height="371"
                      seamless
                      frameborder="0"
                      scrolling="no"
                      src="https://docs.google.com/spreadsheets/d/e/2PACX-1vQwIri4IuD5Y_CnoWrhUZYFEwytmxfq4__lGFBAaUME9IKElx8_KFuoyLYzimwkfWtzUFs7_dbEewkh/pubchart?oid=1630665090&amp;format=interactive"
                    ></iframe>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </main>

        <Footer />
      </div>
    </div>
  </div>
</template>
<script
    src="https://code.jquery.com/jquery-3.5.1.min.js"
    crossorigin="anonymous"
></script>
<script
    src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"
></script>
<script>
import Nav from "../components/officer/nav.vue";
import Menu from "../components/officer/menu.vue";
import Footer from "../components/officer/footer.vue";

import { validateAlertPaymentData } from "../components/Utils/validator.js";
import { request } from "../mixins/sendRequest";
import axios from "axios";
import { mapGetters, mapActions } from "vuex";

export default {
  name: "payment",
  data() {
    return {
      email: "",
    };
  },

  created() {},

  components: {
    Menu,
    Nav,
    Footer,
  },
  computed: {
    ...mapGetters(["get_user_detail", "get_user_role", "get_user_token"]),
  },
  mixins: [request],
  methods: {
    async logout() {
      //empty user store detais
      try {
        await axios
          .get(
            "/api/logout",

            {
              headers: {
                "Content-Type": "application/json",
                Accept: "application/json",
                Authorization: `Bearer ${this.get_user_token}`,
              },
            }
          )
          .then((data) => {
            toastr.success(this.logoutSuccessful, "Success", {
              timeOut: 5000,
            });
            this.reset();
            this.$router.push("/administrator");
          })
          .catch((err) => {
            if (err.response.status == 401 || err.response.status == 500) {
              toastr.success(this.logoutSuccessful, "Success", {
                timeOut: 5000,
              });
              this.reset();
              this.$router.push("/administrator");
            } else {
              toastr.error(this.unknown, "Error", {
                timeOut: 5000,
              });
            }
            console.log(err);
          });
      } catch (err) {
        console.log(err);
      }
    },
    reset() {
      this.refresh_user_token_ac(null);
      this.refresh_user_detail_ac([]);
      this.refresh_user_role_ac(0);
    },
    ...mapActions([
      "refresh_user_role_ac",
      "refresh_user_token_ac",
      "refresh_user_detail_ac",
    ]),
  },
};
</script>
<style src="../../css/styles.css"></style>

<style scoped>
@media only screen and (max-width: 600px) {
  #gframe {
    width: 300px;
  }
}
</style>
