<template>
  <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
    <div class="sb-sidenav-menu">
      <div class="nav">
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
        <router-link class="nav-link" to="/dashboard/pages/bookings">
          <div class="sb-nav-link-icon">
            <i class="fas fa-table"></i>
          </div>Bookings
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
    </div>
    <div class="sb-sidenav-footer" style="font-size: smaller;">
      <div class="small">Logged in as:</div>
      {{ get_user_detail.email }}
    </div>
  </nav>
</template>
<script>
import { mapGetters, mapActions } from "vuex";

export default {
  data() {
    return {};
  },
  computed: {
    ...mapGetters(["get_user_detail", "get_user_token"])
  },
  methods: {
  },
  mounted() {}
};
</script>

