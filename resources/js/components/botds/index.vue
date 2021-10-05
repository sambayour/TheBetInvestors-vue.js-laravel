<template>
  <div class="container">
    <!-- Sponsored ADS -->
    <section class="pt-70">
      <div class="container" id="advert">
        <br />
        <div class="row">
          <div class="col-lg-12">
            <div
              class="img-responsive"
              data-wow-duration="1s"
              data-wow-delay="0.5s"
              style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeIn;margin-top: 0px;"
              v-for="ad in ads"
              :key="ad.id"
            >
              <div v-if="ad.position == 'TOP'">
                <a target="_blank" :href="ad.url">
                  <img
                    id="adsPC"
                    :src="ad.image"
                    style="width: 1200px; height: 157px"
                    alt="ADS-on-TheBetInvestors"
                  />
                </a>
                <a target="_blank" :href="ad.url">
                  <img
                    id="adsMobile"
                    :src="ad.image"
                    style="height: 83px;"
                    alt="ADS-on-TheBetInvestors"
                  />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <div
      class="header-hero bg_cover d-lg-flex align-items-center"
      style="background-image: url(images/header-hero.jpg);height: 600px;"
    >
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="image">
              <img
                style="height: 376px;"
                src="images/about-2.jpg"
                alt="TheBetInvestors Banner Image"
              />
            </div>
          </div>
          <div class="col-lg-8">
            <div class="header-hero-content">
              <h3
                class="hero-title wow fadeInUp"
                data-wow-duration="1s"
                data-wow-delay="0.2s"
                style="font-size: 30px;"
              >
                <b>Bet of the day</b> on
                <span>TheBetInvestors</span>
              </h3>
              <div
                class="text wow fadeInUp"
                data-wow-duration="1s"
                data-wow-delay="0.5s"
                style="100%"
              >
                <a
                  href="https://twitter.com/investor_bet?ref_src=twsrc%5Etfw"
                  class="twitter-follow-button"
                  data-show-count="false"
                >Follow @investor_bet</a>
                <div class="card">
                  <div class="card-body">
                    <div class="table-responsive">
                      <div class="text-center" v-if="Object.keys(botds).length === 0">
                        <h3>
                          No Tips Added Yet For
                          Today
                        </h3>
                      </div>
                      <table v-else class="table mb-0">
                        <thead>
                          <tr>
                            <th>Country</th>
                            <th>Teams</th>
                            <th>Prediction</th>
                            <th>Result</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr v-for="daily in botds" :key="daily.id">
                            <td>{{ daily.country }}</td>
                            <td>{{ daily.teams }}</td>
                            <td>{{ daily.tip }}</td>
                            <td>
                              <span
                                v-if="
                                                                    daily.status ==
                                                                        '1'
                                                                "
                                class="badge badge-success"
                              >WON</span>
                              <span v-else>
                                <span
                                  v-if="
                                                                        daily.status ==
                                                                            '10'
                                                                    "
                                  class="badge badge-warning"
                                >PENDING</span>
                                <span v-else class="badge badge-danger">LOST</span>
                              </span>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                      <div class="text-center">
                        <a
                          class="main-btn"
                          href="#"
                          data-toggle="modal"
                          data-target="#myModal"
                        >Show Previous Tips</a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- header hero content -->
          </div>
        </div>
        <!-- row -->
      </div>
    </div>

    <!-- Sponsored ADS -->
    <section class="pt-70">
      <div class="container" id="advert">
        <br />
        <div class="row">
          <div class="col-lg-12">
            <div
              class="img-responsive"
              data-wow-duration="1s"
              data-wow-delay="0.5s"
              style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeIn;margin-top: 0px;"
              v-for="ad in ads"
              :key="ad.id"
            >
              <div v-if="ad.position == 'BOTTOM'">
                <a target="_blank" :href="ad.url">
                  <img
                    id="adsPC"
                    :src="ad.image"
                    style="width: 1200px; height: 157px"
                    alt="ADS-on-TheBetInvestors"
                  />
                </a>
                <a target="_blank" :href="ad.url">
                  <img
                    id="adsMobile"
                    style="height: 83px;"
                    :src="ad.image"
                    alt="ADS-on-TheBetInvestors"
                  />
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Other predictions -->
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
                  <div class="table-responsive">
                    <table class="table mb-0">
                      <thead>
                        <tr>
                          <th>Country</th>
                          <th>Teams</th>
                          <th>Prediction</th>
                          <th>Result</th>
                        </tr>
                      </thead>
                      <tbody>
                        <div class="text-center"></div>
                        <tr
                          v-for="all in botdsAll.slice(
                                                                    0,
                                                                    10
                                                                )"
                          :key="all.id"
                        >
                          <td>{{ all.country }}</td>
                          <td>{{ all.teams }}</td>
                          <td>{{ all.tip }}</td>
                          <td>
                            <span
                              v-if="
                                                                    all.status ==
                                                                        '1'
                                                                "
                              class="badge badge-success"
                            >WON</span>
                            <span v-else>
                              <span
                                v-if="
                                                                        all.status ==
                                                                            '10'
                                                                    "
                                class="badge badge-warning"
                              >PENDING</span>
                              <span v-else class="badge badge-danger">LOST</span>
                            </span>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
              <!-- end all form in this space -->
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end of other predictions -->
  </div>
</template>
<script>
import { request } from "../../mixins/sendRequest";
export default {
  name: "botds",
  components: {},
  data() {
    return {
      botds: [],
      botdsAll: [],
      ads: [],
    };
  },
  mounted() {
    this.loadTodayBotds();
    this.loadAds();
    this.loadAllBotds();
  },
  mixins: [request],
  methods: {},
  computed: {
    isEmpty: function () {
      return jQuery.isEmptyObject(this.loadTodayBotds);
    },
  },
};
</script>

<style scoped>
@media only screen and (max-width: 600px) {
  #bookies {
    margin-top: 70px;
  }
  #bwrapper {
    padding-top: 0px;
    border-top: 0px;
  }
  #adsPC {
    display: none;
  }
  .image {
    display: none;
  }
}
@media only screen and (min-width: 600px) {
  #adsMobile {
    display: none;
  }
}
</style>
