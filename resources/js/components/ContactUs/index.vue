<template>
  <section class="contact-area pt-120 pb-120">
    <div class="container">
      <div class="row">
        <div class="col-lg-12"></div>
      </div>
      <div class="contact-info pt-30">
        <div class="row">
          <div class="col-lg-4 col-md-6">
            <div
              class="single-contact-info contact-color-1 mt-30 d-flex wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.3s"
              style="visibility: visible; animation-duration: 1s; animation-delay: 0.3s; animation-name: fadeInUp;"
            >
              <div class="contact-info-icon">
                <i class="lni-map-marker"></i>
              </div>
              <div class="contact-info-content media-body">
                <p class="text">Lagos, Nigeria.</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div
              class="single-contact-info contact-color-2 mt-30 d-flex wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.6s"
              style="visibility: visible; animation-duration: 1s; animation-delay: 0.6s; animation-name: fadeInUp;"
            >
              <div class="contact-info-icon">
                <i class="lni-envelope"></i>
              </div>
              <div class="contact-info-content media-body">
                <p class="text">hello@thebetinvestors.com</p>
                <p class="text">developers@thebetinvestors.com</p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div
              class="single-contact-info contact-color-3 mt-30 d-flex wow fadeInUp"
              data-wow-duration="1s"
              data-wow-delay="0.9s"
              style="visibility: visible; animation-duration: 1s; animation-delay: 0.9s; animation-name: fadeInUp;"
            >
              <div class="contact-info-icon">
                <i class="lni-phone"></i>
              </div>
              <div class="contact-info-content media-body">
                <p class="text">+2348084305464</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-lg-12">
          <div
            class="contact-wrapper-form pt-115 wow fadeInUpBig"
            data-wow-duration="1s"
            data-wow-delay="0.5s"
            style="visibility: visible; animation-duration: 1s; animation-delay: 0.5s; animation-name: fadeInUpBig;"
          >
            <h4 class="contact-title pb-10">
              <i class="lni-envelope"></i> Leave
              <span>A Message.</span>
            </h4>
            <form id="contact-form" action @submit.prevent="contactUs()">
              <div class="row">
                <div class="col-md-6">
                  <div class="contact-form mt-45">
                    <label>Name</label>
                    <input type="text" name="name" placeholder="Name :" v-model="contact.fname" />
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="contact-form mt-45">
                    <label>Email</label>
                    <input type="email" name="email" placeholder="Email :" v-model="contact.email" />
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="contact-form mt-45">
                    <label>Message</label>
                    <textarea
                      name="message"
                      placeholder="Enter your message..."
                      v-model="contact.message"
                    ></textarea>
                  </div>
                </div>
                <p class="form-message"></p>
                <div class="col-md-12">
                  <div class="contact-form mt-45">
                    <button type="submit" class="main-btn">{{ contactUsPlaceholder }}</button>
                  </div>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
<script>
import { validateContactUsData } from "../Utils/validator.js";
import axios from "axios";
import { request } from "../../mixins/sendRequest";

export default {
  name: "",
  data() {
    return {
      contact: {
        fname: "",
        email: "",
        message: "",
      },
    };
  },
  mixins: [request],
  methods: {
    async contactUs() {
      let check = validateContactUsData(this.contact, this.edit);

      if (check.valid == false) {
        if (check.errors.fname)
          return toastr.error(check.errors.fname, "Error", {
            timeOut: 5000,
          });

        if (check.errors.email)
          return toastr.error(check.errors.email, "Error", {
            timeOut: 5000,
          });
        if (check.errors.message)
          return toastr.error(check.errors.message, "Error", {
            timeOut: 5000,
          });
      }

      let formData = new FormData();
      formData.append("fname", this.contact.fname);
      formData.append("email", this.contact.email);
      formData.append("description", this.contact.message);
      formData.append("_method", "POST");
      try {
        this.showLoader();
        await axios
          .post(
            "/api/contact_us",
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
              `Message sent, thanks for contacting us`,
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
};
</script>
