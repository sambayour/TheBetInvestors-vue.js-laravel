<template>
  <div class="sb-nav-fixed">
    <!-- partial:partials/_navbar.html -->
    <Nav />
    <div id="layoutSidenav">
      <div id="layoutSidenav_nav">
        <Menu />
      </div>
      <div id="layoutSidenav_content">
        <main>
          <div class="container-fluid">
            <div class="container-fluid page-body-wrapper">
              <!-- partial -->
              <div class="main-panel">
                <div class="content-wrapper">
                  <div class="row">
                    <!-- form goes in here  -->
                    <div class="card col-md-12" style="color: #000;">
                      <div class="card-body col-md-12">
                        <ol class="breadcrumb mb-4">
                          <li class="breadcrumb-item active">Terms & Condition</li>
                        </ol>

                        <div class="row">
                          <!-- form goes in here  -->
                          <div
                            class="card col-md-12"
                            style="color: #000; background-color: #ffffff;box-shadow: 3px 3px 5px 6px #ccc;"
                          >
                            <div class="card-body col-md-12">
                              <form
                                class="form-sample"
                                @submit.prevent="
                                                                    send
                                                                "
                              >
                                <div class="row">
                                  <div class="col-md-12">
                                    <div class="form-group row">
                                      <label class="col-sm-4 col-form-label">
                                        Page
                                        content
                                      </label>
                                      <div class="col-sm-12">
                                        <editor
                                          v-model="
                                                                                        body
                                                                                    "
                                          api-key="no-api-key"
                                          initialValue="<p>This is the initial content of the editor</p>"
                                          :init="{
                                                                                        height: 500,
                                                                                        menubar: true,
                                                                                        plugins: [
                                                                                            'advlist autolink lists link image charmap print preview anchor',
                                                                                            'searchreplace visualblocks code fullscreen',
                                                                                            'insertdatetime media table paste code help wordcount'
                                                                                        ],
                                                                                        toolbar:
                                                                                            'undo redo | formatselect | bold italic backcolor | \
           alignleft aligncenter alignright alignjustify | \
           bullist numlist outdent indent | removeformat | help'
                                                                                    }"
                                        ></editor>
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
                                                                                    termsPlaceholder
                                                                                "
                                      />
                                    </center>
                                  </div>
                                </div>
                              </form>
                            </div>
                          </div>
                          <!-- end all form in this space -->
                        </div>
                      </div>
                    </div>
                    <!-- end all form in this space -->
                  </div>
                </div>
                <!-- content-wrapper ends -->
                <!-- partial:partials/_footer.html -->
                <footer />
              </div>
              <!-- main-panel ends -->
            </div>
          </div>
        </main>
      </div>
      <!-- page-body-wrapper ends -->
    </div>
  </div>
</template>
<script>
import Nav from "../../components/officer/nav.vue";
import Menu from "../../components/officer/menu.vue";
import Footer from "../../components/officer/footer.vue";

import { validateTermsData } from "../../components/Utils/validator.js";
import axios from "axios";
import Editor from "@tinymce/tinymce-vue";
import toastr from "toastr";

import { request } from "../../mixins/sendRequest";
import { mapGetters, mapActions } from "vuex";
export default {
  name: "terms-edit",
  data() {
    return {
      body: "",
      role: "officer",
      image: "",
      imageList: [],
      dialogImageUrl: "",
      dialogVisible: false,
      permission: "You do not have permission to carry out this task",
      expired: "Token expired, please log in again",
      unknown: "An unknown error occured, please try again later"
    };
  },

  components: {
    Menu,
    Nav,
    Footer,
    editor: Editor
  },
  mounted() {
    this.loadTerms();
  },
  computed: {
    ...mapGetters(["get_user_detail", "get_user_role", "get_user_token"])
  },
  mixins: [request],
  methods: {
    updateImageList(file) {
      this.image = false;
      this.imageList = [file.raw];
    },
    async send() {
      this.role = "admin";
      let data = {
        body: this.body,
        image: this.imageList
      };

      let check = validateTermsData(data);

      if (check.valid == false) {
        if (check.errors.body)
          return toastr.error(check.errors.body, "Error", {
            timeOut: 5000
          });
      }
      let formData = new FormData();
      formData.append("body", this.body);
      formData.append("_method", "PUT");
      try {
        this.showLoader();
        await axios
          .post(
            `/api/${this.role}/terms/1`,
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
            this.image = false;

            this.hideLoader();
            toastr.success("Terms updated successfully", "Success", {
              timeOut: 5000
            });
            //this.resetForm();
          })
          .catch(err => {
            this.hideLoader();
            console.log(err.response);
            if (err.response.status == 401) {
              if (err.response.data.error) {
                toastr.error(this.permission, err.response.data.error, {
                  timeOut: 5000
                });
              } else if (err.response.data.message) {
                toastr.error(this.expired, err.response.data.messagr, {
                  timeOut: 5000
                });
                this.reset();
                this.$router.push("/account");
              }
            } else if (err.response.status == 422) {
              const errMes = err.response.data.errors;
              toastr.error(
                errMes.image[0] + "<br/>" + errMes.image[1],
                "Error",
                { timeOut: 5000 }
              );
            }
          });
      } catch (err) {
        toastr.error(this.unknown, "Error", { timeOut: 5000 });
      }
    },
    reset() {
      this.refresh_user_token_ac(0);
      this.refresh_user_detail_ac([]);
      this.refresh_user_role_ac(0);
      this.$router.push("/account");
    },
    resetForm() {
      //this.imageList = [];
      this.body = "";
    },
    ...mapActions([
      "refresh_user_token_ac",
      "refresh_user_detail_ac",
      "refresh_user_role_ac"
    ])
  }
};
</script>

