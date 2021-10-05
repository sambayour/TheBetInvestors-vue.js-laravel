<template>
    <div>
        <section class="sing-in-area pt-70 pb-120">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6">
                        <div
                            class="sing-in-form-area mt-45 wow fadeIn"
                            data-wow-duration="1s"
                            data-wow-delay="0.4s"
                            style="visibility: visible; animation-duration: 1s; animation-delay: 0.4s; animation-name: fadeIn;"
                        >
                            <h4 class="sing-in-title">
                                <i class="lni-user"></i> Sign <span>in.</span>
                            </h4>
                            <div class="sing-in-form-wrapper">
                                <form
                                    @submit.prevent="login"
                                    @keydown="form.onKeydown($event)"
                                >
                                    <div class="single-form mt-45">
                                        <label>Username</label>
                                        <input
                                            v-model="form.username"
                                            id="user"
                                            type="text"
                                            class="input"
                                            placeholder="username"
                                        />
                                    </div>
                                    <div class="single-form mt-45">
                                        <label>Password</label>
                                        <input
                                            v-model="form.password"
                                            id="pass"
                                            type="password"
                                            class="input"
                                            data-type="password"
                                            placeholder="password"
                                        />
                                    </div>
                                    <div
                                        class="single-form mt-35 d-sm-flex justify-content-between"
                                    >
                                        <div class="form-checkbox mt-10">
                                            <input
                                                id="check"
                                                type="checkbox"
                                                name="checkbox1"
                                                class="check"
                                                v-model="form.remember_me"
                                            />
                                            <label for="checkbox1"></label>
                                            <span>Remember Me</span>
                                        </div>
                                    </div>
                                    <div class="single-form mt-45">
                                        <button
                                            :disabled="form.busy"
                                            type="submit"
                                            class="main-btn"
                                        >
                                            {{ loginPlaceholder }}
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3"></div>
                </div>
            </div>
        </section>
    </div>
</template>
<script>
import { validateLoginData } from "../Utils/validator.js";
import { request } from "../../mixins/sendRequest.js";
import { mapGetters, mapActions } from "vuex";
import toastr from "toastr";
export default {
    name: "adiministratorIndex",
    data() {
        return {
            //Create a new form instance
            form: new Form({
                username: "",
                password: "",
                remember_me: false
            })
        };
    },

    computed: {
        ...mapGetters(["get_user_detail", "get_user_role", "get_user_token"])
    },
    mixins: [request],
    methods: {
        login() {
            let check = validateLoginData({
                username: this.form.username,
                password: this.form.password
            });
            if (check.valid == false) {
                if (check.errors.username)
                    return toastr.error(check.errors, "Error", {
                        timeOut: 5000
                    });
                if (check.errors.password)
                    return toastr.error(check.errors.password, "Error", {
                        timeOut: 5000
                    });
            }
            this.showLoader();
            //Submit the form
            this.form
                .post("/api/login")
                .then(({ data }) => {
                    this.hideLoader();
                    toastr.success("Logged in", "Success", { timeOut: 5000 });

                    this.set_user_token_ac(data.access_token);
                    this.set_user_detail_ac(data.user);
                    this.set_user_role_ac(data.user.role_id);
                    if (data.user.role_id == 2) {
                        this.$router.push("/dashboard");
                    } else {
                        this.$router.push("/dashboard");
                    }
                })
                .catch(err => {
                    this.hideLoader();

                    if (err.response.status == 500) {
                        if (this.form.errors.errors.response.username[0]) {
                            return toastr.error(
                                this.form.errors.errors.response.username[0],
                                "Missing Field",
                                { timeOut: 5000 }
                            );
                        } else {
                            return toastr.error(
                                "An unknown error occured, please try again later",
                                "Error",
                                { timeOut: 5000 }
                            );
                        }
                    }
                    if (err.response.status == 401)
                        return toastr.error(
                            "Incorrect username or password",
                            "Wrong Credentials",
                            { timeOut: 5000 }
                        );
                });
        },
        ...mapActions([
            "set_user_detail_ac",
            "set_user_role_ac",
            "set_user_token_ac"
        ])
    }
};
</script>
<style scoped></style>
