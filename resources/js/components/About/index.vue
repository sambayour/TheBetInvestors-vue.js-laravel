<template>
  <div>
    <div class="page" id="main">
      <section class="about-area-2 pt-70 pb-100">
        <div class="container">
          <div class="row">
            <div class="col-lg-6">
              <div
                class="about-image-2 text-center mt-50 wow fadeInLeftBig"
                data-wow-duration="1s"
                data-wow-delay="0.5s"
                style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeInLeftBig;"
              >
                <img src="/images/about22.png" alt="about-TheBetInvestors" style="width: 400px;" />
              </div>
            </div>
            <div class="col-lg-6">
              <div
                class="about-content-2 mt-45 wow fadeInRightBig"
                data-wow-duration="1s"
                data-wow-delay="0.5s"
                style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeInRightBig;"
              >
                <div class="section-title">
                  <h6 class="sub-title">About</h6>
                  <h4 class="title">
                    The
                    Bet
                    <span>
                      Investors
                      <br />
                    </span>
                  </h4>
                </div>
                <ul class="about-line">
                  <li></li>
                  <li></li>
                  <li></li>
                  <li></li>
                </ul>
                <p
                  class="text"
                >Our goal is to be informative, objective and reliable. But there is no guarantee that, even with the best advice available, you will become a successful punter because not everyone has what it takes to be a successful punter.</p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <Footer />
    </div>
  </div>
</template>
<script>
import Footer from "../footer";
export default {
  components: {
    Footer
  }
};
</script>

<style scoped></style>
