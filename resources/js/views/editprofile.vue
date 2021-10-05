<template>
  <div class="container-scroller">
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
                    <strong>EDIT PROFILE</strong>
                  </h2>
                </div>

                <div class="row">
                  <!-- form goes in here  -->
                  <div
                    class="card col-md-12"
                    style="color: #000; background-color: #ffffff;box-shadow: 3px 3px 5px 6px #ccc;"
                  >
                    <div class="card-body col-md-12">
                      <form class="form-sample" @submit.prevent="profileEdit()">
                        <div class="row">
                          <div class="col-md-12">
                            <div class="form-group row">
                              <label class="col-sm-4 col-form-label">Rank</label>
                              <div class="col-sm-12">
                                <select
                                  v-model="
                                                                        profile.rank
                                                                    "
                                  class="form-control"
                                  style="border: 1px solid #000;"
                                >
                                  <option>--SELECT--</option>
                                  <option value="GEN">GEN</option>
                                  <option value="MAJ GEN">
                                    MAJ
                                    GEN
                                  </option>
                                  <option value="BRIG GEN">
                                    BRIG
                                    GEN
                                  </option>
                                  <option value="COL">COL</option>
                                  <option value="LT COL">
                                    LT
                                    COL
                                  </option>
                                  <option value="MAJ">MAJ</option>
                                  <option value="CAPT">CAPT</option>
                                  <option value="LT">LT</option>
                                  <option value="2 LT">
                                    2
                                    LT
                                  </option>
                                  <option value="AWO">AWO</option>
                                  <option value="MWO">MWO</option>
                                  <option value="WO">WO</option>
                                  <option value="SSGT">SSGT</option>
                                  <option value="SGT">SGT</option>
                                  <option value="CPL">CPL</option>
                                  <option value="CPL">LCPL</option>
                                  <option value="CPL">PTE</option>
                                </select>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-12">
                            <div class="form-group row">
                              <label class="col-sm-4 col-form-label">Unit</label>
                              <div class="col-sm-12 black">
                                <input
                                  v-model="
                                                                        profile.unit
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
                                Unit
                                Commander
                              </label>
                              <div class="col-sm-12 black">
                                <input
                                  v-model="
                                                                        profile.commander
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
                                Unit
                                Clerk
                              </label>
                              <div class="col-sm-12 black">
                                <input
                                  v-model="
                                                                        profile.clerk
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
                              <label class="col-sm-4 col-form-label">Phone</label>
                              <div class="col-sm-12 black">
                                <input
                                  v-model="
                                                                        profile.phone
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
                                Profile
                                Image
                              </label>
                              <div class="col-sm-12 col-md-6">
                                <img
                                  class="point"
                                  @click="
                                                                        handleDemo
                                                                    "
                                  v-show="
                                                                        image
                                                                    "
                                  :src="image"
                                  height="150px"
                                  width="150px"
                                />
                              </div>
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
                                :disabled="
                                                                    status
                                                                "
                                type="submit"
                                :value="
                                                                    updateOfficerPlaceholder
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
    </div>
    <!-- page-body-wrapper ends -->
  </div>
</template>
<script>
import Nav from "../components/officer/nav.vue";
import Menu from "../components/officer/menu.vue";

import { validateProfileData } from "../components/Utils/validator.js";
import axios from "axios";
import { request } from "../mixins/sendRequest";
import { mapGetters, mapActions } from "vuex";

import toastr from "toastr";
export default {
  name: "Editprofile",
  data() {
    return {
      profile: {
        // id: "",
        rank: "",
        unit: "",
        commander: "",
        clerk: "",
        phone: "",
        image: ""
        // imageList: [],
        // dialogImageUrl: '',
        // dialogVisible: false
      },
      // edit: false,
      loading: true,
      message: {
        status: false,
        content: "",
        danger: false,
        success: true
      }
      // image:''
    };
  },
  created() {
    this.loadOfficer("/officer/user/");
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
    //  updateImageList(file){
    //   this.image = false;
    //   this.imageList = [file.raw]
    // },
    async profileEdit() {
      let data = {
        rank: this.profile.rank,
        unit: this.profile.unit,
        commander: this.profile.commander,
        clerk: this.profile.clerk,
        phone: this.profile.phone,
        image: this.imageList
      };

      let check = validateProfileData(data);

      if (check.valid == false) {
        if (check.errors.rank)
          return toastr.error(check.errors.rank, "Error", {
            timeOut: 5000
          });
        if (check.errors.unit)
          return toastr.error(check.errors.unit, "Error", {
            timeOut: 5000
          });
        if (check.errors.commandClerk)
          return toastr.error(check.errors.commandClerk, "Error", {
            timeOut: 5000
          });
        if (check.errors.phone)
          return toastr.error(check.errors.phone, "Error", {
            timeOut: 5000
          });
        // if(check.errors.image) return toastr.error(check.errors.image,"Error",{timeOut: 5000});
      }

      let formData = new FormData();
      formData.append("rank", this.profile.rank);
      formData.append("unit", this.profile.unit);
      formData.append("ucommand", this.profile.commander);
      formData.append("clerk", this.profile.clerk);
      formData.append("phone", this.profile.phone);
      // formData.append('image',this.imageList[0])
      this.image ? "" : formData.append("image", this.imageList[0]);
      formData.append("_method", "POST");
      try {
        this.showLoader();
        await axios
          .post(
            "/api/officer/edit-profile",
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
            toastr.success(`Profile Updated`, "Success", {
              timeOut: 5000
            });
          })
          .catch(err => {
            this.hideLoader();
            toastr.error(this.unknown, "Error", { timeOut: 5000 });
            console.log(err);
          });
      } catch (err) {
        this.hideLoader();
        toastr.error(this.unknown, "Error", { timeOut: 5000 });
      }
    }
  }
};
</script>
