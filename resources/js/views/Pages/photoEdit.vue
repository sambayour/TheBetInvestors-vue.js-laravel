<template>
  <div class="sb-nav-fixed">
    <Nav />
    <div id="layoutSidenav">
      <div id="layoutSidenav_nav">
        <Menu />
      </div>
      <div class="layoutSidenav_content" id="layoutcon">
        <main>
          <div class="container-fluid">
            <div class="container-fluid page-body-wrapper">
              <div class="main-panel">
                <div class="content-wrapper">
                  <div class="row">
                    <div class="card col-md-12">
                      <div class="card-body col-md-12">
                        <ol class="breadcrumb mb-4">
                          <li class="breadcrumb-item active">Website ADS</li>
                        </ol>
                        <div class="row">
                          <div class="col-md-3">
                            <button type="button" class="btn btn-success">
                              All Website ADS
                              <span class="badge badge-light">
                                {{
                                pagination.total
                                }}
                              </span>
                              <span class="sr-only">
                                Total Website
                                ADS
                              </span>
                            </button>
                          </div>
                          <div class="col-md-6"></div>
                          <div class="col-md-3"></div>
                          <div class="col-md-1"></div>
                        </div>
                        <div class="form-grids" data-example-id="basic-forms">
                          <div class="form-body">
                            <nav aria-label="Page navigation example">
                              <ul class="pagination">
                                <li
                                  :class="[
                                                                        {
                                                                            disabled: !pagination.prev_page_url
                                                                        }
                                                                    ]"
                                  class="page-item"
                                >
                                  <a
                                    class="page-link"
                                    @click="
                                                                            loadPhoto(
                                                                                pagination.prev_page_url
                                                                            )
                                                                        "
                                    aria-label="Previous"
                                  >
                                    <span aria-hidden="true">&laquo;</span>
                                  </a>
                                </li>
                                <li class="page-item disabled">
                                  <a class="page-link disabled">
                                    {{
                                    pagination.current_page
                                    }}
                                    of
                                    {{
                                    pagination.last_page
                                    }}
                                  </a>
                                </li>

                                <li
                                  :class="[
                                                                        {
                                                                            disabled: !pagination.next_page_url
                                                                        }
                                                                    ]"
                                  class="page-item"
                                >
                                  <a
                                    class="page-link"
                                    @click="
                                                                            loadPhoto(
                                                                                pagination.next_page_url
                                                                            )
                                                                        "
                                    aria-label="Next"
                                  >
                                    <span aria-hidden="true">&raquo;</span>
                                  </a>
                                </li>
                              </ul>
                            </nav>
                            <div class="alert alert-warning" role="alert">
                              <p>For Best display at the <b>TOP & BOTTOM</b> position, the recommended dimension is 1200x157 (width: 1200px
                              height: 157px)                          
                              </p>
                            </div>
                            <table class="table table-hover table-striped table-responsive">
                              <thead>
                                <tr>
                                  <th class="theader" width="5%">#</th>
                                  <th class="theader" width="20%">Url</th>
                                  <th class="theader" width="20%">Position</th>
                                  <th class="theader" width="15%">
                                    Date
                                    Added
                                  </th>
                                  <th class="theader" width="15%">
                                    Date
                                    Updated
                                  </th>
                                  <th class="theader" width="10%">Action</th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr
                                  v-for="photo in photos"
                                  :key="
                                                                        photo.id
                                                                    "
                                >
                                  <th scope="row">
                                    <img
                                      :src="
                                                                                photo.image
                                                                            "
                                      width="50px"
                                    />
                                  </th>
                                  <td>
                                    {{
                                    photo.url
                                    }}
                                  </td>
                                  <td>
                                    {{
                                    photo.position
                                    }}
                                  </td>
                                  <td>
                                    {{
                                    photo.created_at
                                    }}
                                  </td>
                                  <td>
                                    {{
                                    photo.updated_at
                                    }}
                                  </td>
                                  <td>
                                    <i
                                      title="Edit photo"
                                      @click="
                                                                                editPhoto(
                                                                                    photo
                                                                                )
                                                                            "
                                      class="fa fa-edit menu-icon"
                                      data-toggle="modal"
                                      data-target="#myModal"
                                    >Edit</i>
                                  </td>
                                </tr>
                              </tbody>
                            </table>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- end all form in this space -->

                    <!-- modal  -->
                    <div id="myModal" class="modal fade" role="dialog">
                      <div class="modal-dialog">
                        <!-- Modal content-->
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                          </div>
                          <div class="modal-body">
                            <div class="row">
                              <!-- form goes in here  -->
                              <div class="card col-md-12">
                                <div class="card-body col-md-12">
                                  <form
                                    class="form-sample"
                                    @submit.prevent="
                                                                            addPhoto
                                                                        "
                                  >
                                    <div class="row">
                                      <div class="col-md-12">
                                        <div class="form-group row">
                                          <label class="col-sm-4 col-form-label">
                                            Ads
                                            Link
                                          </label>
                                          <div class="col-sm-12">
                                            <input
                                              v-model="
                                                                                                photo.url
                                                                                            "
                                              type="url"
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
                                            Select
                                            Image
                                          </label>
                                          <div class="col-sm-12">
                                            <el-upload
                                              action="/"
                                              list-type="picture-card"
                                              :on-change="
                                                                                                updateImageList
                                                                                            "
                                              :on-preview="
                                                                                                handlePictureCardPreview
                                                                                            "
                                              :on-remove="
                                                                                                handleRemove
                                                                                            "
                                              :auto-upload="
                                                                                                false
                                                                                            "
                                              :limit="
                                                                                                1
                                                                                            "
                                            >
                                              <i class="el-icon-plus avatar-uploader-icon"></i>
                                            </el-upload>
                                            <el-dialog
                                              :visible.sync="
                                                                                                dialogVisible
                                                                                            "
                                            >
                                              <img
                                                width="100%"
                                                :src="
                                                                                                    dialogImageUrl
                                                                                                "
                                                alt
                                              />
                                            </el-dialog>
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
                                                                                            uploadPhotosPlaceholder
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
                      </div>
                    </div>
                    <!-- end modal  -->
                  </div>
                </div>
              </div>
              <Footer />
            </div>
          </div>
        </main>
      </div>
    </div>
  </div>
</template>
<script>
import Nav from "../../components/officer/nav.vue";
import Menu from "../../components/officer/menu.vue";
import Footer from "../../components/officer/footer.vue";

import { validateUploadPhotosData } from "../../components/Utils/validator.js";
import axios from "axios";

import { request } from "../../mixins/sendRequest";
import { mapGetters, mapActions } from "vuex";

import toastr from "toastr";
export default {
  name: "photoEdit",
  data() {
    return {
      photos: [],
      photo: {
        id: "",
        url: "",
        image: ""
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
  created() {
    this.loadPhoto("/api/ads/");
  },
  components: {
    Menu,
    Nav
  },
  computed: {
    ...mapGetters(["get_user_detail", "get_user_role", "get_user_token"])
  },
  mixins: [request],
  methods: {
    async addPhoto() {
      this.photo.image = this.image ? this.photo.image : this.imageList[0];

      let check = validateUploadPhotosData(this.photo, this.edit);

      if (check.valid == false) {
        if (check.errors.title)
          return toastr.error(check.errors.title, "Error", {
            timeOut: 5000
          });
        if (check.errors.category)
          return toastr.error(check.errors.category, "Error", {
            timeOut: 5000
          });
        if (check.errors.year)
          return toastr.error(check.errors.year, "Error", {
            timeOut: 5000
          });
        if (check.errors.image)
          return toastr.error(check.errors.image, "Error", {
            timeOut: 5000
          });
      }

      let formData = new FormData();
      formData.append("id", this.photo.id);
      formData.append("url", this.photo.url);
      this.image ? "" : formData.append("image", this.photo.image);
      this.edit ? formData.append("_method", "PUT") : "";
      try {
        this.showLoader();
        await axios
          .post(
            this.edit ? `/api/admin/ads/${this.photo.id}` : `/api/admin/ads`,

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
            this.uploadPhotosPlaceholder = this.edit
              ? "EDIT ADs"
              : "ADD ADs";
            let store = this.photo;
            this.edit
              ? toastr.success("Ads Successfully updated", "Success", {
                  timeOut: 5000
                })
              : toastr.success("Ads Successfully added", "Success", {
                  timeOut: 5000
                });

            this.edit
              ? this.updateItem("id", store, this.photos, x => {
                  this.photos = x;
                })
              : this.resetForm();
          })
          .catch(err => {
            this.hideLoader();
            console.log(err);
            if (err.response.status == 401) {
              if (err.response.data.error) {
                toastr.error(this.permission, err.response.data.error, {
                  timeOut: 5000
                });

                //redirect user to login or tell them they are not permitted
              } else if (err.response.data.message) {
                toastr.error(this.expired, err.response.data.message, {
                  timeOut: 5000
                });
                this.reset();
                this.$router.push("/administrator");
              }
            } else if (err.response.status == 422) {
              toastr.error(err.response.data.message, "Error", {
                timeOut: 5000
              });
            }
          });
      } catch (err) {
        console.log(err);
        toastr.error(this.unknown, "Error", { timeOut: 5000 });
      }
    },
    async deletePhoto(id) {
      if (confirm("Are you sure you want to delete?")) {
        let formData = new FormData();
        formData.append("id", `${id}`);
        formData.append("_method", "DELETE");

        try {
          await axios
            .post(
              `/api/admin/ads/${id}`,

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
              toastr.success("Ads Successfully deleted", "Success", {
                timeOut: 5000
              });
              this.removeItem("id", id, this.photos, x => {
                this.photos = x;
              });
            })
            .catch(err => {
              console.log(err.response);
              if (err.response.status == 401) {
                if (err.response.data.error) {
                  toastr.error(this.permission, err.response.data.error, {
                    timeOut: 5000
                  });

                  //redirect user to login or tell them they are not permitted
                } else if (err.response.data.message) {
                  toastr.error(this.expired, err.response.data.message, {
                    timeOut: 5000
                  });
                  this.reset();
                  this.$router.push("/administrator");
                }
              } else if (err.response.status == 422) {
                toastr.error(err.response.data.message, "Error", {
                  timeOut: 5000
                });
              }
            });
        } catch (err) {
          toastr.error(this.unknown, "Error", { timeOut: 5000 });
        }
      }
    },
    addItem(cont, val, fn) {
      let con = cont;
      let value = val;
      value.created_at = Date.now();
      value.updated_at = Date.now();
      value.id = Date.now();
      con.push(value);
      fn(con);
    },
    updateItem(ref, value, con, fn) {
      let store = con.findIndex(x => x[ref] == value[ref]);
      con[store].id = value.id;
      con[store].title = value.title;
      con[store].category = value.category;
      con[store].year = value.year;
      con[store].image = value.image;
      con[store].created_at = Date.now();
      con[store].updated_at = Date.now();
      fn(con);
    },
    removeItem(ref, value, con, fn) {
      let store = con.find(x => x[ref] == value)[ref];
      let res = con.filter(x => x[ref] !== store);
      fn(res);
    },
    resetForm() {
      this.edit = false;
      this.uploadPhotosPlaceholder = "ADD ADs";
      this.image = false;
      this.photo.category = "";
      this.photo.year = "";
      this.photo.title = "";

      this.photo.id = "";
      this.photo.image = "";
    },
    handleDemo() {
      this.dialogImageUrl = this.photo.image;
      this.dialogVisible = true;
    },
    updateImageList(file) {
      this.image = false;
      this.imageList = [file.raw];
    },
    editPhoto(photo) {
      this.edit = true;
      this.photo.id = photo.id;
      this.photo.title = photo.title;
      this.photo.category = photo.category;
      this.photo.year = photo.year;
      this.photo.image = photo.image;
      this.image = true;
      this.uploadPhotosPlaceholder = "EDIT ADS";
    }
  }
};
</script>

<style scoped>
@media only screen and (min-width: 600px) {
  #layoutcon {
    margin-left: 250px;
    margin-top: 55px;
    width: -webkit-fill-available;
  }
}
</style>
