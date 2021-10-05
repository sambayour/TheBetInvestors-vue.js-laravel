<template>
  <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <router-link class="navbar-brand" to="/dashboard">TheBetInvestor</router-link>
    <button
      @click="openNav"
      class="btn btn-link btn-sm order-1 order-lg-0"
      id="sidebarToggle"
      to="#"
    >
      <!-- <i class="fa fa-bars" style="width: 4px;"></i> -->
      <svg
        style="width:30px"
        class="svg-inline--fa fa-bars fa-w-14"
        aria-hidden="true"
        focusable="false"
        data-prefix="fas"
        data-icon="bars"
        role="img"
        xmlns="http://www.w3.org/2000/svg"
        viewBox="0 0 448 512"
        data-fa-i2svg
      >
        <path
          fill="currentColor"
          d="M16 132h416c8.837 0 16-7.163 16-16V76c0-8.837-7.163-16-16-16H16C7.163 60 0 67.163 0 76v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16zm0 160h416c8.837 0 16-7.163 16-16v-40c0-8.837-7.163-16-16-16H16c-8.837 0-16 7.163-16 16v40c0 8.837 7.163 16 16 16z"
        />
      </svg>
    </button>
    <!-- Navbar Search-->
    <div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
      <span style="color: rgba(255, 255, 255, 0.5);">Latest IP: {{ get_user_detail.last_ip }}</span>
    </div>

    <div class="right">
      <span class="btn btn-danger" @click="logout" style="border-radius: 5px;
    width: 72px">
        <i class="fas fa-sign-out-alt"></i>
        Sign Out
      </span>
    </div>
    <!-- Navbar-->
    <div id="mySidebar" class="sidebar">
      <a href="javascript:void(0)" class="closebtn" @click="closeNav()">×</a>
      <router-link class="nav-link" to="/dashboard">
        <div class="sb-nav-link-icon">
          <i class="fas fa-table"></i>
        </div>Home
      </router-link>
      <div class="sb-sidenav-menu-heading">Core</div>
      <router-link class="nav-link" to="/dashboard/pages/betting-tips">
        <div class="sb-nav-link-icon">
          <i class="fas fa-table"></i>
        </div>Betting Tips
      </router-link>

      <div class="sb-sidenav-menu-heading">Interface</div>
      <router-link class="nav-link" to="/dashboard/pages/ads">
        <div class="sb-nav-link-icon">
          <i class="fas fa-table"></i>
        </div>ADs
      </router-link>
      <router-link class="nav-link" to="/dashboard/pages/winnings">
        <div class="sb-nav-link-icon">
          <i class="fas fa-table"></i>
        </div>Winning Slips
      </router-link>
      <div class="sb-sidenav-menu-heading">Addons</div>
      <router-link class="nav-link" to="/dashboard/pages/terms">
        <div class="sb-nav-link-icon">
          <i class="fas fa-chart-area"></i>
        </div>Terms
      </router-link>
      <router-link class="nav-link" to="/dashboard/pages/links">
        <div class="sb-nav-link-icon">
          <i class="fas fa-table"></i>
        </div>Social Media
      </router-link>
      <router-link class="nav-link" to="/dashboard/pages/password">
        <div class="sb-nav-link-icon">
          <i class="fas fa-table"></i>
        </div>Change Password
      </router-link>
    </div>
  </nav>
</template>

<script>
import axios from "axios";
import { mapGetters, mapActions } from "vuex";
export default {
  name: "navbar",
  data() {
    return {
      logoutSuccessful: "You are successfully logged out",
      profile: "/images/default.png",
    };
  },
  mounted() {},
  computed: {
    ...mapGetters(["get_user_detail", "get_user_token"]),
  },
  mounted() {},
  methods: {
    async openNav() {
      document.getElementById("mySidebar").style.width = "230px";
      document.getElementById("main").style.marginLeft = "230px";
    },

    async closeNav() {
      document.getElementById("mySidebar").style.width = "0";
      document.getElementById("main").style.marginLeft = "0";
    },
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
<style scoped>
.sidebar {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #343a40;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidebar a {
  display: flex;
  -webkit-box-align: center;
  align-items: center;
  padding-top: 0.75rem;
  padding-bottom: 0.75rem;
  position: relative;
  color: rgba(255, 255, 255, 0.5);
  display: block;
  padding: 0.5rem 1rem;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.sidebar .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}
.sb-sidenav-menu-heading {
  padding: 1.75rem 1rem 0.75rem;
  font-size: 0.75rem;
  font-weight: bold;
  text-transform: uppercase;
  color: rgba(255, 255, 255, 0.25);
}
.openbtn {
  font-size: 20px;
  cursor: pointer;
  background-color: #111;
  color: white;
  padding: 10px 15px;
  border: none;
}

.openbtn:hover {
  background-color: #444;
}

#main {
  transition: margin-left 0.5s;
  padding: 16px;
}

/* On smaller screens, where height is less than 450px, change the style of the sidenav (less padding and a smaller font size) */
@media screen and (max-height: 450px) {
  .sidebar {
    padding-top: 15px;
  }
  .sidebar a {
    font-size: 18px;
  }
}
@media screen and (min-width: 780px) {
#sidebarToggle{
  display:none;
}}
</style>

