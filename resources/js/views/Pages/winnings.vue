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
                          <li class="breadcrumb-item active">Winnings Slip</li>
                        </ol>
                        <div class="row">
                          <div class="col-md-3">
                            <button type="button" class="btn btn-success">
                              All Winnings Slips
                              <span class="badge badge-light">
                                {{
                                pagination.total
                                }}
                              </span>
                              <span class="sr-only">Total Winning Slip</span>
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
                            <table class="table table-hover table-striped table-responsive">
                              <thead>
                                <tr>
                                  <th class="theader" width="5%">#</th>
                                  <th class="theader" width="20%">Caption</th>
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
                                  v-for="wins in winnings"
                                  :key="
                                                                        wins.id
                                                                    "
                                >
                                  <th scope="row">
                                    <img
                                      :src="
                                                                                wins.image
                                                                            "
                                      width="50px"
                                    />
                                  </th>
                                  <td>
                                    {{
                                    wins.caption
                                    }}
                                  </td>
                                  <td>
                                    {{
                                    wins.created_at
                                    }}
                                  </td>
                                  <td>
                                    {{
                                    wins.updated_at
                                    }}
                                  </td>
                                  <td>
                                    <i
                                      title="Edit Slip"
                                      @click="
                                                                                editPhoto(
                                                                                    wins
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
                                          <label
                                            class="col-sm-4 col-form-label"
                                          >\Winning Slip Caption</label>
                                          <div class="col-sm-12">
                                            <input
                                              v-model="
                                                                                                wins.caption
                                                                                            "
                                              type="text"
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
                                                                                            uploadWinningsPlaceholder
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
  name: "WINNINGS",
  data() {
    return {
      winnings: [],
      wins: {
        id: "",
        caption: "",
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
    this.loadSlip("/api/winnings/");
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
      this.wins.image = this.image ? this.wins.image : this.imageList[0];

      let check = validateUploadPhotosData(this.wins, this.edit);

      if (check.valid == false) {
        if (check.errors.title)
          return toastr.error(check.errors.title, "Error", {
            timeOut: 5000
          });
        if (check.errors.caption)
          return toastr.error(check.errors.caption, "Error", {
            timeOut: 5000
          });
        if (check.errors.image)
          return toastr.error(check.errors.image, "Error", {
            timeOut: 5000
          });
      }

      let formData = new FormData();
      formData.append("caption", this.wins.caption);
      this.image ? "" : formData.append("id", this.wins.id);
      this.image ? "" : formData.append("image", this.wins.image);
      this.edit ? formData.append("_method", "PUT") : "";
      try {
        this.showLoader();
        await axios
          .post(
            this.edit
              ? `/api/admin/winnings/${this.wins.id}`
              : `/api/admin/winnings`,

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
            this.uploadWinningsPlaceholder = this.edit
              ? "EDIT WINNINGS"
              : "ADD WINNINGS";
            let store = this.wins;
            this.edit
              ? toastr.success("Winnings Successfully updated", "Success", {
                  timeOut: 5000
                })
              : toastr.success("Winnings Successfully added", "Success", {
                  timeOut: 5000
                });

            this.edit
              ? this.updateItem("id", store, this.winnings, x => {
                  this.winnings = x;
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
              `/api/admin/winnings/${id}`,

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
              toastr.success("Winnings Slip Successfully deleted", "Success", {
                timeOut: 5000
              });
              this.removeItem("id", id, this.winnings, x => {
                this.winnings = x;
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
      con[store].caption = value.caption;
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
      this.uploadWinningsPlaceholder = "ADD WINNINGS";
      this.image = false;
      this.wins.caption = "";
      this.wins.id = "";
      this.wins.image = "";
    },
    handleDemo() {
      this.dialogImageUrl = this.wins.image;
      this.dialogVisible = true;
    },
    updateImageList(file) {
      this.image = false;
      this.imageList = [file.raw];
    },
    editPhoto(wins) {
      this.edit = true;
      this.wins.id = wins.id;
      this.wins.caption = wins.caption;
      this.wins.image = wins.image;
      this.image = true;
      this.uploadWinningsPlaceholder = "EDIT WINNINGS";
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
