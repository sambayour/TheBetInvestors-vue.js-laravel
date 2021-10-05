<template>
  <div v-show="show" id="page">
    <div>
      <!--====== HEADER PART START ======-->

      <header class="header-area">
        <div class="navbar-area" id="navbar-id" style>
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <nav class="navbar navbar-expand-lg">
                  <router-link class="navbar-brand" to="/">
                    <img src="images/logo.png" alt="ThBetInvestors-Logo" />
                  </router-link>
                  <button
                    class="navbar-toggler"
                    type="button"
                    data-toggle="collapse"
                    data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent"
                    aria-expanded="false"
                    aria-label="Toggle navigation"
                  >
                    <span class="toggler-icon"></span>
                    <span class="toggler-icon"></span>
                    <span class="toggler-icon"></span>
                  </button>

                  <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                    <ul class="navbar-nav m-auto">
                      <li class="nav-item active">
                        <router-link to="/">Home</router-link>
                      </li>
                      <li class="nav-item">
                        <router-link to="/about">About</router-link>
                      </li>
                      <li class="nav-item">
                        <router-link to="#">
                          Betting
                          Services
                        </router-link>
                        <ul class="sub-menu">
                          <li>
                            <router-link to="/daily2odd">
                              Daily 2
                              Odds
                            </router-link>
                          </li>
                          <li>
                            <router-link to="/trebles">Treble</router-link>
                          </li>
                          <li>
                            <router-link to="/razor-5-odds">
                              Razor 5
                              Odds
                            </router-link>
                          </li>
                          <li>
                            <router-link to="/bet-of-the-day">
                              Bet of the
                              Day
                            </router-link>
                          </li>
                          <li>
                            <router-link to="/btts">BTS</router-link>
                          </li>
                          <li>
                            <router-link to="/today-acca">
                              Today's
                              Acca
                            </router-link>
                          </li>
                        </ul>
                      </li>
                      <li class="nav-item">
                        <router-link to="/terms">
                          Terms and
                          Conditions
                        </router-link>
                      </li>
                      <li class="nav-item">
                        <router-link to="/contact">Contact</router-link>
                      </li>
                      <li class="nav-item">
                        <router-link to="/faq">Faq</router-link>
                      </li>
                    </ul>
                  </div>

                  <div class="navbar-btn d-none d-lg-inline-block">
                    <a
                      class="main-btn"
                      href="http://www.begambleaware.org/"
                      target="_blank"
                    >Be Gamble Aware</a>
                  </div>
                </nav>
                <!-- navbar -->
              </div>
            </div>
            <!-- row -->
          </div>
          <!-- container -->
        </div>
        <!-- navbar area -->
      </header>

      <section class="pt-115">
        <div class="container">
          <a target="_blank" href="http://t.co/d5SanK2Kzx?amp=1">
            <img
              id="gif-banner"
              class="responsive"
              height="150"
              src="images/first-header-banner.gif"
            />
          </a>
        </div>
        <div
          class="header-hero bg_cover d-lg-flex align-items-center"
          style="
                    "
          id="tips-container"
        >
          <div class="container">
            <br />
            <br />
            <br />
            <br />
            <div class="row">
              <div class="col-lg-8">
                <div class="header-hero-content">
                  <h3
                    class="hero-title wow fadeInUp"
                    data-wow-duration="1s"
                    data-wow-delay="0.2s"
                    style="font-size: 45px;"
                  >
                    <b>Latest Tips</b> on
                    <span>TheBetInvestors</span>
                  </h3>
                  <div
                    class="text wow fadeInUp"
                    data-wow-duration="1s"
                    data-wow-delay="0.5s"
                    style="100%"
                  >
                    <div class="card">
                      <div class="card-body">
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
                              <tr
                                v-for="bets in allbets.slice(
                                                                    0,
                                                                    10
                                                                )"
                                :key="
                                                                    bets.created_at
                                                                "
                              >
                                <td>
                                  {{
                                  bets.country
                                  }}
                                </td>
                                <td>
                                  {{
                                  bets.teams
                                  }}
                                </td>
                                <td>
                                  {{
                                  bets.tip
                                  }}
                                </td>
                                <td>
                                  <span
                                    v-if="
                                                                            bets.status ==
                                                                                '1'
                                                                        "
                                    class="badge badge-success"
                                  >WON</span>
                                  <span v-else>
                                    <span
                                      v-if="
                                                                                bets.status ==
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
                  </div>
                </div>
                <!-- header hero content -->
              </div>

              <div class="col-lg-4">
                <br />
                <br />
                <h6 class="welcome">BOOKING CODES</h6>
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                  <div class="carousel-inner">
                    <div
                      class="carousel-item"
                      v-for="(book, index) in bookings.slice(0,3)"
                      :class="{ 'active': index === 0 }"
                      :key="book.id"
                    >
                      <div>
                        <img
                          class="d-block w-100"
                          :src="book.image"
                          alt="thebetinvestors tips slide"
                        />
                      </div>
                    </div>
                  </div>
                  <a
                    class="carousel-control-prev"
                    href="#carouselExampleControls"
                    role="button"
                    data-slide="prev"
                  >
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                  </a>
                  <a
                    class="carousel-control-next"
                    href="#carouselExampleControls"
                    role="button"
                    data-slide="next"
                  >
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                  </a>
                </div>
              </div>
            </div>
            <!-- row -->
          </div>
        </div>
      </section>

      <!--====== HEADER PART ENDS ======-->
      <section class="pt-70">
        <div class="container">
          <a target="_blank" href="http://t.co/d5SanK2Kzx?amp=1">
            <img
              id="gif-banner"
              class="responsive"
              height="150"
              src="images/first-header-banner.gif"
            />
          </a>
        </div>
      </section>
      <!-- Sponsored ADS -->
      <section class="pt-70">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-9">
              <div
                class="about-title text-center wow fadeInUp"
                data-wow-duration="1s"
                data-wow-delay="0.3s"
                style="visibility: visible; animation-duration: 1s; animation-delay: 0.3s; animation-name: fadeInUp;"
              >
                <h6 class="welcome">WINNING SLIPS</h6>
              </div>
            </div>
          </div>
          <!-- row -->
          <div class="row">
            <div class="col-lg-3" v-for="winning in winnings" :key="winning.id">
              <div
                class="about-image mt-60 wow fadeIn"
                data-wow-duration="1s"
                data-wow-delay="0.5s"
                style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeIn;"
              >
                <img :src="winning.image" alt="winnings" />
                <p
                  class="text wow fadeInUp"
                  data-wow-duration="1s"
                  data-wow-delay="0.4s"
                  style="visibility: visible; animation-duration: 1s; animation-delay: 0.4s; animation-name: fadeInUp;"
                >{{winning.caption}}</p>
              </div>
              <!-- about image -->
            </div>
          </div>
          <!-- row -->
          <!-- row -->
        </div>
        <div class="container" id="advert">
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

      <!-- End of sponsored ADS -->

      <!--====== BRAND PART START ======-->
      <section class="pt-70">
        <div class="brand-area" id="bookies">
          <div class="container">
            <div class="row">
              <div class="col-lg-12">
                <div class="brand-wrapper pt-70 clearfix" id="bwrapper">
                  <div
                    class="about-title text-center wow fadeInUp"
                    data-wow-duration="1s"
                    data-wow-delay="0.3s"
                  >
                    <h6 class="welcome">Recommended Bookmakers</h6>
                  </div>
                  <div
                    class="single-brand mt-50 text-md-left wow fadeIn"
                    data-wow-duration="1s"
                    data-wow-delay="0.2s"
                  >
                    <a href="http://bit.ly/3hS5BF6" target="_blank">
                      <img src="images/bookmaker1.png" alt="1xbet" />
                    </a>
                  </div>
                  <!-- single brand -->
                  <div
                    class="single-brand mt-50 wow fadeIn"
                    data-wow-duration="1s"
                    data-wow-delay="0.3s"
                  >
                    <a href="http://bit.ly/3f7i6KX" target="_blank">
                      <img src="images/bookmaker3.jpg" alt="Melbet" />
                    </a>
                  </div>
                  <!-- single brand -->
                  <div
                    class="single-brand mt-50 wow fadeIn"
                    data-wow-duration="1s"
                    data-wow-delay="0.4s"
                  >
                    <a href target="_blank">
                      <img src="images/bookmaker2.png" alt="Betwinner" />
                    </a>
                  </div>
                  <!-- single brand -->
                  <div
                    class="single-brand mt-50 wow fadeIn"
                    data-wow-duration="1s"
                    data-wow-delay="0.5s"
                  >
                    <a target="_blank" href="#">
                      <img src="images/bookmaker5.jpg" alt="Bet9ja" />
                    </a>
                  </div>
                  <!-- single brand -->
                  <div
                    class="single-brand mt-50 text-md-right wow fadeIn"
                    data-wow-duration="1s"
                    data-wow-delay="0.6s"
                  >
                    <a target="_blank" href="http://t.co/d5SanK2Kzx?amp=1">
                      <img src="images/bookmaker4.png" alt="22bet" />
                    </a>
                  </div>
                  <!-- single brand -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="about-area pt-115">
        <div class="brand-area">
          <div class="container">
            <div class="row">
              <div class="col-lg-4" id="mylivescoreWidget">
                <a
                  href="https://twitter.com/investor_bet?ref_src=twsrc%5Etfw"
                  class="twitter-follow-button"
                  data-show-count="false"
                >Follow @investor_bet</a>
                <iframe
                  style="border:0px #ffffff none;height: 550px;"
                  width="350"
                  src="https://samuelolubayo.website/live.html"
                  scrolling="yes"
                  frameborder="0"
                  allowfullscreen
                ></iframe>
              </div>
              <div class="col-lg-5">
                <div class="img-responsive">
                  <a href="http://t.co/d5SanK2Kzx?amp=1" target="_blank">
                    <img src="images/about-mid.jpg" alt="22bet-promo" />
                  </a>
                </div>
              </div>
              <div class="col-lg-3">
                <a
                  href="https://twitter.com/investor_bet?ref_src=twsrc%5Etfw"
                  class="twitter-follow-button"
                  data-show-count="false"
                >Follow @investor_bet</a>
                <div style="overflow-y:auto;height:550px !important;">
                  <!-- <div> -->
                  <a
                    class="twitter-timeline"
                    href="https://twitter.com/investor_bet"
                    data-aria-polite="assertive"
                  >Tweets by @investor_bet</a>
                  <!-- <div> -->
                  <a
                    class="twitter-timeline"
                    href="https://twitter.com/investor_bet"
                    data-aria-polite="assertive"
                  >Tweets by @investor_bet</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Sponsored ADS -->
      <br />
      <div class="container" id="advert">
        <div class="row">
          <div class="col-lg-12">
            <div
              class="img-responsive"
              data-wow-duration="1s"
              data-wow-delay="0.5s"
              style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeIn;"
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
      <br />
      <!-- End of sponsored ADS -->

      <section
        class="newsletter-area bg_cover pt-115 pb-120"
        style="background-image: url(images/newsletter-bg.jpg)"
      >
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-10">
              <div class="newsletter-wrapper">
                <div
                  class="section-title text-center wow fadeInUpBig"
                  data-wow-duration="1s"
                  data-wow-delay="0.3s"
                >
                  <h6 class="sub-title">Subscribe</h6>
                  <h4 class="title">
                    Get latest tips
                    <span>from TheBetInvestor.</span>
                  </h4>
                </div>
                <!-- section title -->
                <div
                  class="newsletter-form wow fadeIn"
                  data-wow-duration="1s"
                  data-wow-delay="0.5s"
                >
                  <form action @submit.prevent="subscription()">
                    <input
                      type="text"
                      placeholder="Enter your Email ......."
                      v-model="subscribe.email"
                    />
                    <button class="main-btn">{{ subscribePlaceholder }}</button>
                  </form>
                </div>
                <!-- newsletter form -->
              </div>
              <!-- newsletter wrapper -->
            </div>
          </div>
          <!-- row -->
        </div>
        <!-- container -->
      </section>

      <Footer />
    </div>
  </div>
</template>
<script>
import { validateSubscription } from "../components/Utils/validator.js";
import { request } from "../mixins/sendRequest";
import axios from "axios";
import Footer from "../components/footer";
export default {
  data() {
    return {
      allbets: [],
      winnings: [],
      ads: [],
      bookings: [],
      subscribe: {
        email: "",
      },
      show: false,
    };
  },
  mounted() {
    this.loadLatestBet();
    this.loadWinnings();
    this.loadAds();
    this.loadBookings();
  },
  components: {
    Footer,
  },

  beforeMount() {
    setTimeout(() => {
      this.show = true;
    }, 700);
    this.$forceUpdate();
  },
  mixins: [request],
  methods: {
    async subscription() {
      let check = validateSubscription(this.subscribe, this.edit);

      if (check.valid == false) {
        if (check.errors.email)
          return toastr.error(check.errors.email, "Error", {
            timeOut: 5000,
          });
      }
      let formData = new FormData();
      formData.append("email", this.subscribe.email);
      formData.append("_method", "POST");
      try {
        this.showLoader();
        await axios
          .post(
            "/api/subscribe",
            formData,

            {
              headers: {
                "Content-Type": "application/json",
                Accept: "application/json",
              },
            }
          )
          .then((data) => {
            this.hideLoader();
            toastr.success(
              `Message sent, you have added to our subscription list`,
              "Success",
              { timeOut: 5000 }
            );
          })
          .catch((err) => {
            this.hideLoader();
            toastr.error(this.unknown, "Error", { timeOut: 5000 });
            console.log(err);
          });
      } catch (err) {
        this.hideLoader();
        toastr.error(this.unknown, "Error", { timeOut: 5000 });
      }
    },
  },
  created() {},
};
</script>

<style>
</style>
<style scoped>
@import "../../css/style.css";
@import "../../css/default.css";
@import "../../css/slick.css";
@import "../../css/animate.css";
@import "../../css/bootstrap.min.css";
@import "../../css/LineIcons.css";

@media only screen and (max-width: 600px) {
  .header-hero-content {
    padding-top: 70px;
  }
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
  #advert {
    margin-top: 0px;
  }
  #tips-container {
    background-image: none;
    height: 1555px;
    top: -114px;
  }
  #mylivescoreWidget {
    margin-bottom: 22px;
  }
}
@media only screen and (min-width: 600px) {
  #adsMobile {
    display: none;
  }
  #gif-banner {
    width: 1200px;
  }
  /* #tips-container {
        height: 0px;
    } */
}
</style>
