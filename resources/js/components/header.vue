<template>
  <div>
    <div id="page">
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
              </div>
            </div>
          </div>
        </div>
      </header>
    </div>
  </div>
</template>
<script>
export default {};
</script>
