export const request = {
    data() {
        return {
            status: false,
            loginPlaceholder: "LOGIN",
            resetPlaceholder: "SEND ME LINK",
            resetPasswordPlaceholder: "RESET",
            contactUsPlaceholder: "SEND MESSAGE",
            subscribePlaceholder: "SUBSCRIBE",
            uploadTipPlaceholder: "ADD BET TIP",
            editBetPlaceholder: "EDIT BET TIP",
            uploadPhotosPlaceholder: "ADD ADS",
            bookingsPlaceholder: "ADD BOOKING",
            uploadWinningsPlaceholder: "ADD WINNINGS",
            updateOfficerPlaceholder: "UPDATE PROFILE",
            updatePasswordPlaceholder: "UPDATE PASSWORD",
            linksPlaceholder: "UPDATE LINKS",
            uploadUsersPlaceholder: "ADD USER",
            placeholder: "SEND",
            data: [],
            imageList: ["a"],
            dialogImageUrl: "",
            dialogVisible: false,
            permission: "You do not have permission to carry out this task",
            expired: "Token expired, please log in again",
            unknown: "An unknown error occured, please try again later",
            loading: true
        };
    },
    filters: {
        capitalize: function(value) {
            if (!value) return "";
            value = value.toString();
            return value.toUpperCase();
        },
        lowercase: function(value) {
            if (!value) return "";
            value = value.toString();
            return value.toLowerCase();
        },
        reduce: function(value) {
            if (!value) return "";
            value = value.substring(19);
            return value;
        }
    },
    methods: {
        async loadTerms() {
            await axios
                .get(
                    `/api/terms/1`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.body = data.data.body;
                });
        },

        async loadLinks() {
            await axios
                .get(
                    `/api/socials/1`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.facebook = data.data.facebook;
                    this.twitter = data.data.twitter;
                    this.telegram = data.data.telegram;
                });
        },

        //users
        async loadUser() {
            await axios
                .get(
                    `/api/admin/user/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.users = data.data;
                });
        },

        //
        async loadLatestBet() {
            await axios
                .get(
                    `/api/all_today_tip`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.allbets = data.data;
                });
        },
        async loadFaq() {
            await axios
                .get(
                    `/api/faq/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.faqs = data.data;
                });
        },
        async loadWinnings() {
            await axios
                .get(
                    `/api/winningslips/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.winnings = data.data;
                });
        },
        async loadAds() {
            await axios
                .get(
                    `/api/paidAds/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.ads = data.data;
                });
        },
        async loadBookings() {
            await axios
                .get(
                    `/api/bookings/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.bookings = data.data;
                });
        },
        async loadSocials() {
            await axios
                .get(
                    `/api/socials/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.socials = data.data;
                });
        },

        async loadUserTerms() {
            await axios
                .get(
                    `/api/terms/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.terms = data.data;
                });
        },

        async loadDaily2odds() {
            await axios
                .get(
                    `/api/today_2odds/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.daily2odds = data.data;
                });
        },

        async loadAll2odds() {
            await axios
                .get(
                    `/api/all_2odds/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.daily2oddsAll = data.data;
                });
        },
        async loadRollovers() {
            await axios
                .get(
                    `/api/today_rollovers/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.rollovers = data.data;
                });
        },

        async loadAllRollovers() {
            await axios
                .get(
                    `/api/all_rollovers/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.rolloversAll = data.data;
                });
        },

        async loadGG() {
            await axios
                .get(
                    `/api/today_ggtips/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.btts = data.data;
                });
        },

        async loadAllGG() {
            await axios
                .get(
                    `/api/all_ggtips/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.bttsAll = data.data;
                });
        },

        async loadTodayBotds() {
            await axios
                .get(
                    `/api/today_botds/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.botds = data.data;
                });
        },

        async loadAllBotds() {
            await axios
                .get(
                    `/api/all_botds/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.botdsAll = data.data;
                });
        },

        async loadTodayTrebles() {
            await axios
                .get(
                    `/api/today_trebles/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.trebles = data.data;
                });
        },

        async loadAllTrebles() {
            await axios
                .get(
                    `/api/all_trebles/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.treblesAll = data.data;
                });
        },

        async loadToday5odds() {
            await axios
                .get(
                    `/api/today_razor5odds/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.razor5odds = data.data;
                });
        },

        async loadAll5odds() {
            await axios
                .get(
                    `/api/all_razor5odds/`,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json"
                        }
                    }
                )
                .then(({ data }) => {
                    this.razor5oddsAll = data.data;
                });
        },

        //  get current user profile
        async loadOfficer(ur) {
            let url = ur || `/api/officer/user/`;
            await axios
                .get(
                    url,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json",
                            Authorization: `Bearer ${this.get_user_token}`
                        }
                    }
                )
                .then(({ data }) => {
                    this.data = data.data;
                    this.user = this.data;
                    // this.makePagination(data.meta,data.links);
                });
        },
        // end  current user profile

        async loadUser(ur) {
            let url = ur || `/api/admin/user/`;
            await axios
                .get(
                    url,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json",
                            Authorization: `Bearer ${this.get_user_token}`
                        }
                    }
                )
                .then(({ data }) => {
                    this.data = data.data;
                    this.users = this.data;
                    this.makePagination(data.meta, data.links);
                });
        },
        async loadPhoto(ur) {
            let url = ur || `/api/ads/`;
            await axios
                .get(
                    url,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json",
                            Authorization: `Bearer ${this.get_user_token}`
                        }
                    }
                )
                .then(({ data }) => {
                    this.data = data.data;
                    this.photos = this.data;
                    this.makePagination(data.meta, data.links);
                });
        },

        async loadSlip(ur) {
            let url = ur || `/api/winnings/`;
            await axios
                .get(
                    url,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json",
                            Authorization: `Bearer ${this.get_user_token}`
                        }
                    }
                )
                .then(({ data }) => {
                    this.data = data.data;
                    this.winnings = this.data;
                    this.makePagination(data.meta, data.links);
                });
        },

        async loadNewsData(ur) {
            let url = ur || `/api/allbets`;
            await axios
                .get(
                    url,

                    {
                        headers: {
                            "Content-Type": "application/json",
                            Accept: "application/json",
                            Authorization: `Bearer ${this.get_user_token}`
                        }
                    }
                )
                .then(({ data }) => {
                    this.data = data.data;
                    this.bets = this.data;

                    this.makePagination(data.meta, data.links);
                });
        },

        showLoader() {
            this.registerPlaceholder = "Loading .... Please wait";
            this.loginPlaceholder = "Loading .... Please wait";
            this.resetPlaceholder = "Loading .... Please wait";
            this.contactUsPlaceholder = "Loading .... Please wait";
            this.subscribePlaceholder = "Loading .... Please wait";
            this.resetPasswordPlaceholder = "Loading .... Please wait";
            this.uploadTipPlaceholder = "Loading .... Please wait";
            this.editBetPlaceholder = "Loading .... Please wait";
            (this.uploadEventsPlaceholder = "Loading .... Please wait"),
                (this.uploadPhotosPlaceholder = "Loading .... Please wait"),
                (this.uploadWinningsPlaceholder = "Loading .... Please wait"),
                (this.updatePasswordPlaceholder = "Loading .... Please wait"),
                (this.termsPlaceholder = "Loading .... Please wait");
            this.linksPlaceholder = "Loading .... Please wait";
            this.uploadUsersPlaceholder = "Loading .... Please wait";
            this.placeholder = "Loading .... Please wait";
            this.status = true;
        },
        hideLoader() {
            this.registerPlaceholder = "SIGN UP";
            this.loginPlaceholder = "LOGIN";
            this.resetPlaceholder = "SEND ME LINK";
            this.contactUsPlaceholder = "SEND MESSAGE";
            this.subscribePlaceholder = "SUBSCRIBE";
            this.resetPasswordPlaceholder = "RESET";
            this.uploadTipPlaceholder = "ADD BET TIP";
            this.editBetPlaceholder = "EDIT BET TIP";
            (this.uploadPhotosPlaceholder = "ADD ADS"),
                (this.uploadWinningsPlaceholder = "ADD WINNINGS"),
                (this.updateOfficerPlaceholder = "UPDATE PROFILE"),
                (this.updatePasswordPlaceholder = "UPDATE PASSWORD"),
                (this.termsPlaceholder = "UPDATE TERMS");
            this.linksPlaceholder = "UPDATE LINKS";
            (this.uploadUsersPlaceholder = "ADD USER"),
                (this.placeholder = "SEND");
            this.status = false;
        },

        handleRemove(file, fileList) {
            this.imageList = [];
        },
        handlePictureCardPreview(file) {
            this.dialogImageUrl = file.url;
            this.dialogVisible = true;
        },
        updateImageList(file) {
            this.imageList = [file.raw];
        },
        handleDemo() {
            this.dialogImageUrl = this.image;
            this.dialogVisible = true;
        },
        makePagination(meta, links) {
            let pagination = {
                current_page: meta.current_page,
                last_page: meta.last_page,
                next_page_url: links.next,
                prev_page_url: links.prev,
                total: meta.total
            };
            this.pagination = pagination;
        }
    }
};
