<template>
  <div class="app header-default side-nav-dark side-nav-folded">
    <!-- partial:partials/_navbar.html -->
    <Nav />
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_settings-panel.html -->
      <div id="right-sidebar" class="settings-panel">
        <i class="settings-close mdi mdi-close"></i>
        <ul class="nav nav-tabs" id="setting-panel" role="tablist">
          <li class="nav-item">
            <a
              class="nav-link active"
              id="todo-tab"
              data-toggle="tab"
              href="#todo-section"
              role="tab"
              aria-controls="todo-section"
              aria-expanded="true"
            >TO DO LIST</a>
          </li>
          <li class="nav-item">
            <a
              class="nav-link"
              id="chats-tab"
              data-toggle="tab"
              href="#chats-section"
              role="tab"
              aria-controls="chats-section"
            >CHATS</a>
          </li>
        </ul>
        <div class="tab-content" id="setting-content">
          <div
            class="tab-pane fade show active scroll-wrapper"
            id="todo-section"
            role="tabpanel"
            aria-labelledby="todo-section"
          >
            <div class="add-items d-flex px-3 mb-0">
              <form class="form w-100">
                <div class="form-group d-flex">
                  <input type="text" class="form-control todo-list-input" placeholder="Add To-do" />
                  <button
                    type="submit"
                    class="add btn btn-primary todo-list-add-btn"
                    id="add-task"
                  >Add</button>
                </div>
              </form>
            </div>
            <div class="list-wrapper px-3">
              <ul class="d-flex flex-column-reverse todo-list">
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" />
                      Team review meeting at 3.00 PM
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" />
                      Prepare for presentation
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
                <li>
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" />
                      Resolve all the low priority tickets
                      due today
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked />
                      Schedule meeting for next week
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
                <li class="completed">
                  <div class="form-check">
                    <label class="form-check-label">
                      <input class="checkbox" type="checkbox" checked />
                      Project review
                    </label>
                  </div>
                  <i class="remove mdi mdi-close-circle-outline"></i>
                </li>
              </ul>
            </div>
            <div class="events py-4 border-bottom px-3">
              <div class="wrapper d-flex mb-2">
                <i class="mdi mdi-circle-outline text-primary mr-2"></i>
                <span>Feb 11 2018</span>
              </div>
              <p class="mb-0 font-weight-thin text-gray">Creating component page</p>
              <p class="text-gray mb-0">build a js based app</p>
            </div>
            <div class="events pt-4 px-3">
              <div class="wrapper d-flex mb-2">
                <i class="mdi mdi-circle-outline text-primary mr-2"></i>
                <span>Feb 7 2018</span>
              </div>
              <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
              <p class="text-gray mb-0">Call Sarah Graves</p>
            </div>
          </div>
          <!-- To do section tab ends -->
          <div
            class="tab-pane fade"
            id="chats-section"
            role="tabpanel"
            aria-labelledby="chats-section"
          >
            <div class="d-flex align-items-center justify-content-between border-bottom">
              <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
              <small
                class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal"
              >See All</small>
            </div>
            <ul class="chat-list">
              <li class="list active">
                <div class="profile">
                  <img src="/images/helment.jpg" alt="image" />
                  <span class="online"></span>
                </div>
                <div class="info">
                  <p>Thomas Douglas</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">19 min</small>
              </li>
              <li class="list">
                <div class="profile">
                  <img src="/images/helment.jpg" alt="image" />
                  <span class="offline"></span>
                </div>
                <div class="info">
                  <div class="wrapper d-flex">
                    <p>Catherine</p>
                  </div>
                  <p>Away</p>
                </div>
                <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                <small class="text-muted my-auto">23 min</small>
              </li>
              <li class="list">
                <div class="profile">
                  <img src="/images/helment.jpg" alt="image" />
                  <span class="online"></span>
                </div>
                <div class="info">
                  <p>Daniel Russell</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">14 min</small>
              </li>
              <li class="list">
                <div class="profile">
                  <img src="/images/helment.jpg" alt="image" />
                  <span class="offline"></span>
                </div>
                <div class="info">
                  <p>James Richardson</p>
                  <p>Away</p>
                </div>
                <small class="text-muted my-auto">2 min</small>
              </li>
              <li class="list">
                <div class="profile">
                  <img src="/images/helment.jpg" alt="image" />
                  <span class="online"></span>
                </div>
                <div class="info">
                  <p>Madeline Kennedy</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">5 min</small>
              </li>
              <li class="list">
                <div class="profile">
                  <img src="/images/helment.jpg" alt="image" />
                  <span class="online"></span>
                </div>
                <div class="info">
                  <p>Sarah Graves</p>
                  <p>Available</p>
                </div>
                <small class="text-muted my-auto">47 min</small>
              </li>
            </ul>
          </div>
          <!-- chat tab ends -->
        </div>
      </div>
      <!-- partial -->
      <!-- partial:partials/_sidebar.html -->
      <Menu />
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <div class="row">
            <!-- form goes in here  -->
            <div
              class="card col-md-12"
              style="color: #000; background-color: #ffffff;box-shadow: 3px 3px 5px 6px #ccc;"
            >
              <div class="card-body col-md-12">
                <div class="row fh5co-heading text-fit">
                  <h2 class="service_style">
                    <strong>
                      Users ({{
                      pagination.total - 1
                      }})
                    </strong>
                  </h2>
                </div>

                <div class="form-grids" data-example-id="basic-forms">
                  <div class="form-title">
                    <div class="row">
                      <div class="col-md-8">
                        <h4>List of users</h4>
                      </div>
                      <div class="col-md-3">
                        <button
                          type="button"
                          @click="resetForm()"
                          class="btn btn-primary"
                          data-toggle="modal"
                          data-target="#myModal"
                        >
                          Add User
                          <i class="mdi mdi-account-plus menu-icon"></i>
                        </button>
                      </div>
                      <div class="col-md-1"></div>
                    </div>
                  </div>
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
                                                            loadUser(
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
                                                            loadUser(
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
                          <th class="theader" width="20%">Fullname</th>
                          <th class="theader" width="15%">Service number</th>
                          <th class="theader" width="15%">Rank</th>
                          <th class="theader" width="10%">Unit</th>
                          <th class="theader" width="10%">Role</th>
                          <th class="theader" width="10%">Status</th>
                          <th class="theader" width="10%">Date added</th>
                          <th class="theader" width="10%">Action</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr v-for="user in users" :key="user.id">
                          <td scope="row">
                            <img :src="user.image" width="50px" />
                          </td>
                          <td>{{ user.full_name }}</td>
                          <td>
                            {{
                            user.service_number
                            }}
                          </td>
                          <td>{{ user.rank }}</td>
                          <td>{{ user.unit }}</td>
                          <td>
                            <span v-if="user.admin" class="badge badge-success">ADMIN</span>
                          </td>
                          <td>
                            <span
                              v-if="
                                                                user.last_login
                                                            "
                              class="badge badge-success"
                            >VERIFIED</span>
                            <span v-else class="badge badge-warning">PENDING</span>
                          </td>
                          <td>23 Oct, 2019</td>
                          <td>
                            <i
                              title="Edit user"
                              @click="
                                                                editUser(user)
                                                            "
                              class="mdi mdi-account-edit menu-icon"
                              data-toggle="modal"
                              data-target="#myModal"
                            ></i>
                            <span v-if="user.id != 1">
                              <i
                                title="Delete user"
                                @click="
                                                                    deleteUser(
                                                                        user.id
                                                                    )
                                                                "
                                class="mdi mdi-account-remove menu-icon"
                              ></i>
                              <i
                                title="Revoke admin right"
                                @click="
                                                                    toggleAdmin(
                                                                        user.id,
                                                                        user,
                                                                        0
                                                                    )
                                                                "
                                v-if="
                                                                    user.admin ==
                                                                        1
                                                                "
                                class="mdi mdi-check-decagram menu-icon icon-green"
                              />
                              <i
                                title="Add admin right"
                                @click="
                                                                    toggleAdmin(
                                                                        user.id,
                                                                        user,
                                                                        1
                                                                    )
                                                                "
                                v-if="
                                                                    user.admin ==
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
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">
              Copyright © 2020
              <a href="https://www.thebetinvestors.com/" target="_blank">NAFC</a>. All rights reserved.
            </span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
      <!-- Modal -->

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
                <div class="card col-md-12" style="color: #000;padding: 40px;">
                  <div class="card-body col-md-12">
                    <form class="form-sample" @submit.prevent="addUser">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Fullname</label>
                            <div class="col-sm-12">
                              <input
                                v-model="
                                                                    user.full_name
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
                            <label class="col-sm-4 col-form-label">Email</label>
                            <div class="col-sm-12">
                              <input
                                v-model="
                                                                    user.email
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
                              Service
                              number
                            </label>
                            <div class="col-sm-12">
                              <input
                                v-model="
                                                                    user.reg_service_number
                                                                "
                                type="text"
                                class="form-control"
                                :readonly="
                                                                    user.id == 1
                                                                "
                                :class="{
                                                                    disableIT:
                                                                        user.id ==
                                                                        1
                                                                }"
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group row">
                            <label class="col-sm-4 col-form-label">Rank</label>
                            <div class="col-sm-12">
                              <select
                                v-model="
                                                                    user.rank
                                                                "
                                class="form-control"
                              >
                                <option value="Major General">
                                  Major
                                  General
                                </option>
                                <option value="General">General</option>
                                <option value="Colonel">Colonel</option>
                                <option value="Major">Major</option>
                                <option value="others">others</option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group row">
                            <label class="col-sm-4 col-form-label">UNIT</label>
                            <div class="col-sm-12">
                              <select
                                v-model="
                                                                    user.unit
                                                                "
                                class="form-control"
                              >
                                <option value="Army Headquarters">
                                  Army
                                  Headquarters
                                </option>
                                <option value="Nigerian Army Medical Corps">
                                  Nigerian
                                  Army Medical
                                  Corps
                                </option>
                                <option value="Nigerian Army Finance Corps">
                                  Nigerian
                                  Army Finance
                                  Corps
                                </option>
                                <option value="Nigerian Army Engineers Corps">
                                  Nigerian
                                  Army
                                  Engineers
                                  Corps
                                </option>
                                <option value="Nigerian Army Ordinance Corps">
                                  Nigerian
                                  Army
                                  Ordinance
                                  Corps
                                </option>
                                <option value="Nigerian Army Ordinance Corps">
                                  Nigerian
                                  Army
                                  Intelligence
                                  Corps
                                </option>
                                <option value="Nigerian Army Ordinance Corps">
                                  Nigerian
                                  Army
                                  Education
                                  Corps
                                </option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group row">
                            <label class="col-sm-4 col-form-label">SALARY STEP</label>
                            <div class="col-sm-12">
                              <select
                                v-model="
                                                                    user.salary_step
                                                                "
                                class="form-control"
                              >
                                <option value="Step 1">
                                  Step
                                  1
                                </option>
                                <option value="Step 2">
                                  Step
                                  2
                                </option>
                                <option value="Step 3">
                                  Step
                                  3
                                </option>
                                <option value="Step 4">
                                  Step
                                  4
                                </option>
                                <option value="Step 5">
                                  Step
                                  5
                                </option>
                                <option value="Step 6">
                                  Step
                                  6
                                </option>
                                <option value="Step 7">
                                  Step
                                  7
                                </option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="form-group row">
                            <label class="col-sm-4 col-form-label">
                              DATE OF
                              PROMOTION
                            </label>
                            <div class="col-sm-12">
                              <input
                                v-model="
                                                                    user.date_promotion
                                                                "
                                class="form-control"
                                type="date"
                                name="date"
                                id="date-form"
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div
                          v-show="
                                                        user.image !=
                                                            '/storage/'
                                                    "
                          class="col-md-12"
                        >
                          <div class="form-group row">
                            <label class="col-sm-4 col-form-label">
                              Upload User
                              image
                            </label>
                            <div class="col-sm-12 col-md-6">
                              <img
                                class="point"
                                @click="
                                                                    handleDemo
                                                                "
                                v-show="image"
                                :src="
                                                                    user.image
                                                                "
                                height="150px"
                                width="150px"
                              />
                            </div>
                            <div class="col-sm-12 col-md-6">
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
                                :limit="1"
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
                              :disabled="status"
                              type="submit"
                              :value="
                                                                uploadUsersPlaceholder
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
    </div>
  </div>
  <!-- page-body-wrapper ends -->
</template>
<script>
import Nav from "../components/officer/nav.vue";
import Menu from "../components/officer/menu.vue";

import { validateSignUpData } from "../components/Utils/validator.js";
import axios from "axios";
import Editor from "@tinymce/tinymce-vue";

import { request } from "../mixins/sendRequest";
import { mapGetters, mapActions } from "vuex";

import toastr from "toastr";
export default {
  name: "upload-news",
  data() {
    return {
      users: [],
      user: {
        id: "",
        full_name: "",
        reg_service_number: "",
        email: "",
        status: "",
        admin: "",
        salary_step: "Step 1",
        rank: "Colonel",
        unit: "Army Headquarters",
        date_promotion: "",
        date_added: "",
        image: ""
      },
      pagination: {},
      edit: false,
      loading: true,
      image: false
    };
  },
  created() {
    this.loadUser("/api/admin/user/", data => {
      this.users = data;
    });
  },
  components: {
    Menu,
    Nav,
    Editor
  },
  computed: {
    ...mapGetters(["get_user_detail", "get_user_role", "get_user_token"])
  },
  mixins: [request],
  methods: {
    async addUser() {
      this.user.image = this.image ? this.user.image : this.imageList[0];

      let check = validateSignUpData(this.user, this.edit);

      if (check.valid == false) {
        if (check.errors.full_name)
          return toastr.error(check.errors.full_name, "Error", {
            timeOut: 5000
          });
        if (check.errors.email)
          return toastr.error(check.errors.email, "Error", {
            timeOut: 5000
          });
        if (check.errors.reg_service_number)
          return toastr.error(check.errors.reg_service_number, "Error", {
            timeOut: 5000
          });
        if (check.errors.rank)
          return toastr.error(check.errors.rank, "Error", {
            timeOut: 5000
          });
        if (check.errors.unit)
          return toastr.error(check.errors.unit, "Error", {
            timeOut: 5000
          });
        if (check.errors.salary_step)
          return toastr.error(check.errors.salary_step, "Error", {
            timeOut: 5000
          });
        if (check.errors.image)
          return toastr.error(check.errors.image, "Error", {
            timeOut: 5000
          });
        //if(check.errors.date_promotion) return toastr.error(check.errors.date_promotion,"Error",{timeOut: 5000});
        return toastr.error(
          "An unknown error occured, pleae try again later",
          "Error",
          { timeOut: 5000 }
        );
      }

      let formData = new FormData();
      formData.append("full_name", this.user.full_name);
      formData.append("email", this.user.email);
      formData.append("reg_service_number", this.user.reg_service_number);
      formData.append("rank", this.user.rank);
      formData.append("unit", this.user.unit);
      formData.append("salary_step", this.user.salary_step);
      formData.append("date_promotion", "2019-09-12");
      console.log(this.user.date_promotion);
      this.image ? "" : formData.append("image", this.user.image);
      this.edit ? formData.append("_method", "PUT") : "";
      try {
        this.showLoader();
        await axios
          .post(
            this.edit ? `/api/admin/user/${this.user.id}` : `/api/register/`,

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
            this.uploadUsersPlaceholder = this.edit ? "EDIT USER" : "ADD USER";
            let store = this.user;
            this.edit
              ? toastr.success("User Successfully updated", "Success", {
                  timeOut: 5000
                })
              : toastr.success(
                  "User Successfully added and they would get an email soon.",
                  "Success",
                  { timeOut: 5000 }
                );

            //todo

            // 2) Do also for add and return id of added user
            // to enable the new user to be edited and deleted
            //without need to refresh the page

            this.edit
              ? this.updateItem("id", store, this.users, x => {
                  this.users = x;
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
                this.$router.push("/account");
              }
            } else if (err.response.status == 422) {
              toastr.error(err.response.data.message, "Error", {
                timeOut: 5000
              });
            } else if (err.response.status == 500) {
              console.log(err.response);
              if (err.response.data.response.full_name)
                toastr.error(err.response.data.response.full_name, "Error", {
                  timeOut: 5000
                });
              if (err.response.data.response.email)
                toastr.error(err.response.data.response.email, "Error", {
                  timeOut: 5000
                });
              if (err.response.data.response.service_number)
                toastr.error(
                  err.response.data.response.service_number,
                  "Error",
                  { timeOut: 5000 }
                );
              if (err.response.data.response.rank)
                toastr.error(err.response.data.response.rank, "Error", {
                  timeOut: 5000
                });
              if (err.response.data.response.unit)
                toastr.error(err.response.data.response.unit, "Error", {
                  timeOut: 5000
                });
              if (err.response.data.response.salary_step)
                toastr.error(err.response.data.response.salary_step, "Error", {
                  timeOut: 5000
                });
              if (err.response.data.response.date_promotion)
                toastr.error(
                  err.response.data.response.date_promotion,
                  "Error",
                  { timeOut: 5000 }
                );
              //toastr.error("Please enter a valid date","Invalid date",{timeOut: 5000});
            }
          });
      } catch (err) {
        console.log(err);
        toastr.error(this.unknown, "Error", { timeOut: 5000 });
      }
    },
    async deleteUser(id) {
      if (confirm("Are you sure?")) {
        let formData = new FormData();
        formData.append("_method", "DELETE");

        try {
          await axios
            .post(
              `/api/admin/user/${id}`,

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
              toastr.success("User Successfully deleted", "Success", {
                timeOut: 5000
              });
              this.removeItem("id", id, this.users, x => {
                this.users = x;
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
                  this.$router.push("/account");
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
      con[store].reg_service_number = value.reg_service_number;
      con[store].rank = value.rank;
      con[store].unit = value.unit;
      con[store].full_name = value.full_name;
      con[store].admin = value.admin;
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
      this.uploadUsersPlaceholder = "ADD USER";
      this.image = false;
      this.user.id = "";
      this.user.full_name = "";
      this.user.email = "";
      this.user.service_number = "";
      this.user.rank = "Colonel";
      this.user.unit = "Army Headquarters";
      this.user.salary_step = "Step 1";
      this.date_promotion = "2019-03-19";
    },
    handleDemo() {
      this.dialogImageUrl = this.user.image;
      this.dialogVisible = true;
    },
    updateImageList(file) {
      this.image = false;
      this.imageList = [file.raw];
    },
    editUser(user) {
      this.edit = true;
      this.user.id = user.id;
      this.user.full_name = user.full_name;
      this.user.email = user.email;
      this.user.reg_service_number = user.service_number;
      this.user.rank = user.rank;
      this.user.unit = user.unit;
      this.user.salary_step = user.salary_step;
      this.user.image = user.image;
      this.image = true;
      this.uploadUsersPlaceholder = "EDIT USER";
    },
    async toggleAdmin(id, user, state) {
      const message =
        state == 1
          ? "Are you sure you want to make this officer an admin?"
          : "Are you sure you want to revoke admin right from this officer?";
      if (confirm(message)) {
        let formData = new FormData();
        formData.append("id", id);
        try {
          await axios
            .post(
              state == 1
                ? "/api/admin/make-admin/"
                : "/api/admin/revoke-admin/",
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
              state == 1 ? (user.admin = 1) : (user.admin = 0);
              this.updateItem("id", user, this.users, x => {
                this.users = x;
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
                  this.$router.push("/account");
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
