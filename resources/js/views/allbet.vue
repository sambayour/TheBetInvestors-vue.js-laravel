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
            <div class="row">
              <!-- form goes in here  -->
              <div class="card col-md-12" style>
                <div class="card-body col-md-12">
                  <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active">Betting Tips</li>
                  </ol>
                  <div class="row"></div>

                  <div class="form-grids" data-example-id="basic-forms">
                    <div class="form-title">
                      <div class="row">
                        <div class="col-md-4">
                          <button type="button" class="btn btn-success">
                            All bet tips
                            <span class="badge badge-light">
                              {{
                              pagination.total
                              }}
                            </span>
                            <span class="sr-only">Total bets added</span>
                          </button>
                        </div>
                        <div class="col-md-4">
                          <select class="form-control" @change="loadNews">
                            <option value="ALL">ALL BETS</option>
                            <option value="GG">BTTS</option>
                            <option value="ROLLOVERS">TODAY ACCA</option>
                            <option value="RAZOR5ODDS">RAZOR 5 ODD</option>
                            <option value="DAILY 2 ODD">DAILY 2 ODD</option>
                            <option value="TREBLES">TREBLES</option>
                            <option value="BOTDS">BET OF THE DAY</option>
                          </select>
                        </div>
                        <div class="col-md-4">
                          <router-link to="/dashboard/new-tip/">
                            <button type="button" class="btn btn-primary">
                              Add Bet Tip
                              <i class="mdi mdi-account-plus menu-icon"></i>
                            </button>
                          </router-link>
                        </div>
                      </div>
                    </div>
                    <div class="form-body">
                      <nav aria-label="Page navigation example" class="pagination">
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
                                                                loadNews(
                                                                    category,
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
                                                                loadNews(
                                                                    category,
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
                            <th class="theader" width="5%">Country</th>
                            <th class="theader" width="15%">Teams</th>
                            <th class="theader" width="15%">Tip</th>
                            <th class="theader" width="15%">Category</th>
                            <th class="theader" width="15%">Status</th>
                            <th class="theader" width="10%">Date added</th>
                            <th class="theader" width="15%">Action</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr
                            v-for="snew in bets"
                            :key="
                                                            snew.category +
                                                                snew.id
                                                        "
                          >
                            <td scope="row">
                             {{ snew.country }}
                            </td>
                            <td>{{ snew.teams }}</td>
                            <td>{{ snew.tip }}</td>
                            <td>{{ snew.category }}</td>
                            <td>
                              <span
                                v-if="
                                                                    snew.status ==
                                                                        '1'
                                                                "
                                class="badge badge-success"
                              >WON</span>
                              <span v-else>
                                <span
                                  v-if="
                                                                        snew.status ==
                                                                            '10'
                                                                    "
                                  class="badge badge-warning"
                                >PENDING</span>
                                <span v-else class="badge badge-danger">LOST</span>
                              </span>
                            </td>
                            <td>
                              {{
                              snew.created_at
                              }}
                            </td>
                            <td>
                              <i
                                title="Edit Bet entry"
                                @click="
                                                                    editNews(
                                                                        snew
                                                                    )
                                                                "
                                class="fa fa-edit menu-icon"
                                data-toggle="modal"
                                data-target="#myModal"
                              >Edit</i>
                              <span>
                                <i
                                  title="Delete news entry"
                                  @click="
                                                                        deleteNews(
                                                                            snew.category,
                                                                            snew.id
                                                                        )
                                                                    "
                                  class="fa fa-trash menu-icon"
                                >Delete</i>
                                <i
                                  title="Disapprove news entry"
                                  @click="
                                                                        toggleApproval(
                                                                            snew.id,
                                                                            snew,
                                                                            0
                                                                        )
                                                                    "
                                  v-if="
                                                                        snew.status ==
                                                                            1
                                                                    "
                                  class="fa fa-decagram menu-icon icon-green"
                                />
                                <i
                                  title="Approve news entry"
                                  @click="
                                                                        toggleApproval(
                                                                            snew.id,
                                                                            snew,
                                                                            1
                                                                        )
                                                                    "
                                  v-if="
                                                                        snew.status ==
                                                                            0
                                                                    "
                                  class="mdi mdi-checkbox-blank-circle-outline menu-icon"
                                />
                              </span>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
              <!-- end all form in this space -->
            </div>
          </div>

          <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content">
                <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>
                <div class="modal-body">
                  <div class>
                    <!-- form goes in here  -->
                    <div class="card col-md-12" style>
                      <div class="card-body col-md-12">
                        <form class="form-sample" @submit.prevent="send">
                          <div class="row">
                            <div class="col-md-12">
                              <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Match</label>
                                <div class="col-sm-12">
                                  <input
                                    v-model="
                                                                            snew.teams
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
                                <label class="col-sm-4 col-form-label">Category</label>
                                <div class="col-sm-12">
                                  <select
                                    v-model="
                                                                            snew.category
                                                                        "
                                    class="form-control"
                                  >
                                    <option value="GG">BTTS</option>
                                    <option value="ROLLOVERS">ROLLOVERS</option>
                                    <option value="DAILY 2 ODD">
                                      DAILY
                                      2
                                      ODD
                                    </option>
                                  </select>
                                </div>
                              </div>
                            </div>
                          </div>
                          <div class="row">
                            <div class="col-md-12">
                              <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Status</label>
                                <div class="col-sm-12">
                                  <select
                                    v-model="
                                                                            snew.status
                                                                        "
                                    class="form-control"
                                  >
                                    <option value="10">pending</option>
                                    <option value="1">won</option>
                                    <option value="0">lost</option>
                                  </select>
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
                                                                        editBetPlaceholder
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
        </main>
        <Footer />
      </div>
    </div>
    <!-- page-body-wrapper ends -->
  </div>
</template>
<script>
import Nav from "../components/officer/nav.vue";
import Menu from "../components/officer/menu.vue";
import Footer from "../components/officer/footer.vue";

import { validateUploadNewsData } from "../components/Utils/validator.js";
import axios from "axios";
import Editor from "@tinymce/tinymce-vue";

import { request } from "../mixins/sendRequest";
import { mapGetters, mapActions } from "vuex";

import toastr from "toastr";
export default {
  name: "all-bet",
  data() {
    return {
      bets: [],
      snew: {
        id: "",
        teams: "",
        tips: "",
        category: "",
        initCategory: "",
        date_added: "",
        status: ""
      },
      category: "ALL",
      pagination: {},
      edit: false,
      loading: true,
      image: false
    };
  },
  created() {
    this.loadNewsData();
  },
  components: {
    Menu,
    Footer,
    Nav,
    Editor
  },
  computed: {
    ...mapGetters(["get_user_detail", "get_user_role", "get_user_token"])
  },
  mixins: [request],
  methods: {
    async loadNews(event, urlG = null) {
      let cases = { target: { value: event } };
      if (event.target != undefined) {
        cases = event;
      }
      let url;
      if (cases.target.value == "GG") {
        url = urlG ? urlG : "/api/ggtips";
        this.category = "GG";
        this.loadNewsData(url);
      } else if (cases.target.value == "ROLLOVERS") {
        url = urlG ? urlG : "/api/admin/rollovers";
        this.category = "ROLLOVERS";
        this.loadNewsData(url);
      } else if (cases.target.value == "DAILY 2 ODD") {
        url = urlG ? urlG : "/api/daily2odds";
        this.category = "DAILY 2 ODD";
        this.loadNewsData(url);
      } else if (cases.target.value == "RAZOR5ODDS") {
        url = urlG ? urlG : "/api/razor5odds";
        this.category = "RAZOR5ODDS";
        this.loadNewsData(url);
      } else if (cases.target.value == "BOTDS") {
        url = urlG ? urlG : "/api/botds";
        this.category = "BOTDS";
        this.loadNewsData(url);
      } else if (cases.target.value == "TREBLES") {
        url = urlG ? urlG : "/api/trebles";
        this.category = "TREBLES";
        this.loadNewsData(url);
      } else if (cases.target.value == "ALL") {
        url = urlG ? urlG : "/api/allbets";
        this.category = "ALL";
        this.loadNewsData(url);
      }
    },
    async send() {
      let check = validateUploadNewsData(this.snew, this.edit);

      if (check.valid == false) {
        if (check.errors.teams)
          return toastr.error(check.errors.teams, "Error", {
            timeOut: 5000
          });
        if (check.errors.tip)
          return toastr.error(check.errors.tip, "Error", {
            timeOut: 5000
          });
      }

      let formData = new FormData();
      formData.append("id", this.snew.id);
      formData.append("teams", this.snew.teams);
      formData.append("tip", this.snew.tip);
      formData.append("status", this.snew.status);
      formData.append("category", this.snew.category);
      console.log(this.snew.initCategory != this.snew.category);
      formData.append("update", this.snew.initCategory != this.snew.category);
      formData.append("_method", "PUT");
      try {
        this.showLoader();
        await axios

          .post(
            `/api/admin/allbets/${this.snew.id}`,

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
            console.log(data);
            this.hideLoader();
            this.editBetPlaceholder = "EDIT TIP";
            let store = this.snew;

            if (this.snew.initCategory != this.snew.category) {
              toastr.success(
                "News has been moved to a new category and its contents updated",
                "Success",
                { timeOut: 5000 }
              );
              //if we are in all view we would not delete but update the item
              if (this.category == "ALL") {
                console.log(this.snew);
                this.updateItem(
                  "id",
                  store,
                  this.news,
                  x => {
                    this.news = x;
                  },
                  this.snew.initCategory
                );
              } else {
                this.removeItem(
                  "id",
                  this.snew.id,
                  this.news,
                  x => {
                    this.news = x;
                  },
                  this.snew.initCategory
                );
              }
            } else {
              toastr.success("Bet tip Successfully updated", "Success", {
                timeOut: 5000
              });
              // this.$router.push("/dashboard/pages/betting-tips");
              this.updateItem(
                "id",
                store,
                this.bets,
                x => {
                  this.bets = x;
                },
                this.snew.initCategory
              );
            }
          })
          .catch(err => {
            this.hideLoader();
            this.editBetPlaceholder = "EDIT TIP";
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
            } else if (err.response.status == 404) {
              toastr.error("The news has already been tranferred", "Error", {
                timeOut: 5000
              });
            } else if (err.response.status == 422) {
              toastr.error(err.response.data.message, "Error", {
                timeOut: 5000
              });
            } else if (err.response.status == 500) {
              console.log(err.response);
              if (err.response.data.response.teams)
                toastr.error(err.response.data.response.teams, "Error", {
                  timeOut: 5000
                });
              if (err.response.data.response.tip)
                toastr.error(err.response.data.response.tip, "Error", {
                  timeOut: 5000
                });
              if (err.response.data.response.status)
                toastr.error(err.response.data.response.status, "Error", {
                  timeOut: 5000
                });
              //toastr.error("Please enter a valid date","Invalid date",{timeOut: 5000});
            }
          });
      } catch (err) {
        console.log(err);
        toastr.error(this.unknown, "Error", { timeOut: 5000 });
      }
    },
    async deleteNews(category, id) {
      if (confirm("Are you sure?, this can't be reversed!")) {
        let formData = new FormData();
        formData.append("id", id);
        formData.append("_method", "DELETE");

        try {
          let url;
          if (category == "GG") {
            url = `/api/admin/ggtips/${id}`;
          } else if (category == "ROLLOVERS") {
            url = `/api/admin/rollovers/${id}`;
          } else if (category == "DAILY 2 ODD") {
            url = `/api/admin/daily2odds/${id}`;
          }
          await axios
            .post(
              url,

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
              toastr.success("Bet tip Successfully deleted", "Success", {
                timeOut: 5000
              });
              this.removeItem(
                "id",
                id,
                this.bets,
                x => {
                  this.bets = x;
                },
                category
              );
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
    updateItem(ref, value, con, fn, cat = null) {
      let store = con.findIndex(x => x[ref] == value[ref] && x.category == cat);

      con[store].id = value.id;
      con[store].teams = value.teams;
      con[store].tip = value.tip;
      con[store].category = value.category;
      con[store].status = value.status;
      fn(con);
    },
    removeItem(ref, value, con, fn, cat = null) {
      let store = con.find(x => x[ref] == value && x.category == cat)[ref];
      let res = con.filter(x => x[ref] !== store);
      fn(res);
    },

    handleDemo() {
      this.dialogImageUrl = this.snew.image;
      this.dialogVisible = true;
    },
    updateImageList(file) {
      this.image = false;
      this.imageList = [file.raw];
    },
    editNews(snew) {
      this.edit = true;
      this.snew.id = snew.id;
      this.snew.category = snew.category;
      this.snew.initCategory = snew.category;
      this.snew.teams = snew.teams;
      this.snew.tip = snew.tip;
      this.snew.status = snew.status;
      this.image = true;
      this.uploadUsersPlaceholder = "EDIT TIP";
    },
    async toggleApproval(id, snew, state) {
      const message =
        state == 1
          ? "Are you sure you want to approve the content of this bet tip?"
          : "Are you sure you want to take this content down?";
      if (confirm(message)) {
        let formData = new FormData();
        formData.append("id", id);
        try {
          await axios
            .post(
              state == 1
                ? "/api/admin/community-approve"
                : "/api/admin/community-revoke",
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
              state == 1 ? (snew.status = 1) : (snew.status = 0);
              state == 1
                ? (snew.approved_by = this.get_user_detail.full_name)
                : (snew.approved_by = "");
              this.updateItem(
                "id",
                snew,
                this.bets,
                x => {
                  this.bets = x;
                },
                snew.category
              );
            })
            .catch(err => {
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
          toastr.error(this.unknown, "Error", { timeOut: 5000 });
        }
      }
    }
  }
};
</script>

