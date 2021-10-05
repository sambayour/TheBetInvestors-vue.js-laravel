<template>
  <div class="sb-nav-fixed">
    <!-- partial:partials/_navbar.html -->
    <Nav />

    <div id="layoutSidenav">
      <div id="layoutSidenav_nav">
        <Menu />
      </div>
      <!-- partial -->
      <div id="layoutSidenav_content">
        <main>
          <div class="container-fluid">
            <div class="row">
              <!-- form goes in here  -->
              <div class="card col-md-12" style>
                <div class="card-body col-md-12">
                  <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Change Password</li>
                  </ol>

                  <div class="row">
                    <!-- form goes in here  -->
                    <div class="card col-md-12" style>
                      <div class="card-body col-md-12">
                        <form class="form-sample" @submit.prevent="changepassword">
                          <div class="row">
                            <div class="col-md-12">
                              <div class="form-group row">
                                <label class="col-sm-4 col-form-label">
                                  Current
                                  Password
                                </label>
                                <div class="col-sm-12 black">
                                  <input
                                    v-model="
                                                                        pass.cpassword
                                                                    "
                                    type="password"
                                    class="form-control"
                                  />
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-12">
                              <div class="form-group row">
                                <label class="col-sm-4 col-form-label">
                                  New
                                  Password
                                </label>
                                <div class="col-sm-12 black">
                                  <input
                                    v-model="
                                                                        pass.npassword
                                                                    "
                                    type="password"
                                    class="form-control"
                                  />
                                </div>
                              </div>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-md-12">
                              <center>
                                <input
                                  class="btn btn-primary"
                                  :disabled="
                                                                    status
                                                                "
                                  type="submit"
                                  :value="
                                                                    updatePasswordPlaceholder
                                                                "
                                />
                              </center>
                            </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </main>
        <Footer />
        <!-- partial -->
      </div>
    </div>
  </div>
  <!-- </div> -->
</template>
<script>
import Nav from "../components/officer/nav.vue";
import Menu from "../components/officer/menu.vue";
import Footer from "../components/officer/footer.vue";

import { validatePassChangeData } from "../components/Utils/validator.js";
import axios from "axios";

import { request } from "../mixins/sendRequest";
import { mapGetters, mapActions } from "vuex";

import toastr from "toastr";
export default {
  name: "password",
  data() {
    return {
      pass: {
        id: "",
        cpassword: "",
        npassword: ""
      },
      pagination: {},
      edit: false,
      loading: true,
      message: {
        status: false,
        content: "",
        danger: false,
        success: true
      },
      image: false
    };
  },
  components: {
    Menu,
    Nav,
    Footer
  },
  computed: {
    ...mapGetters(["get_user_detail", "get_user_role", "get_user_token"])
  },
  mixins: [request],
  methods: {
    async changepassword() {
      let check = validatePassChangeData({
        cpassword: this.pass.cpassword,
        npassword: this.pass.npassword
      });

      if (check.valid == false) {
        if (check.errors.cpassword)
          return toastr.error(check.errors.cpassword, "Error", {
            timeOut: 5000
          });
        if (check.errors.npassword)
          return toastr.error(check.errors.npassword, "Error", {
            timeOut: 5000
          });
        // if(check.errors.match) return toastr.error(check.errors.match,"Error",{timeOut: 5000});
        if (check.errors.length)
          return toastr.error(check.errors.length, "Error", {
            timeOut: 5000
          });
      }

      let formData = new FormData();
      formData.append("cpassword", this.pass.cpassword);
      formData.append("npassword", this.pass.npassword);
      formData.append("_method", "POST");
      try {
        this.showLoader();
        await axios
          .post(
            "/api/admin/change-password",
            formData,

            {
              headers: {
                "Content-Type": "application/json",
                Accept: "application/json",
                Authorization: `Bearer ${this.get_user_token}`
              }
            }
          )
          .then(data => {
            this.hideLoader();
            toastr.success(`New Password Updated`, "Success", {
              timeOut: 5000
            });
            this.$router.push("/dashboard");
          })
          .catch(err => {
            console.log(err.response);
            if (err.response.data.message) {
              toastr.error(
                this.permission,
                err.response.data.message,
                "Error",
                { timeOut: 5000 }
              );
              this.reset();
              this.$router.push("/dashboard/pages/password");
            } else if (err.response.status == 401) {
              if (err.response.data.error) {
                toastr.error(this.permission, err.response.data.error, {
                  timeOut: 5000
                });
              }
            } else if (err.response.status == 422) {
              toastr.error(err.response.data.message, "Error", {
                timeOut: 5000
              });
              this.$router.push("/dashboard");
            }
          });
      } catch (err) {
        this.hideLoader();
        toastr.error(this.unknown, "Error", { timeOut: 5000 });
      }
    },

    handleDemo() {
      this.dialogImageUrl = this.digest.image;
      this.dialogVisible = true;
    },
    updateImageList(file) {
      this.image = false;
      this.imageList = [file.raw];
    }
  }
};
</script>

