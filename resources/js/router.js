import Vue from "vue";
import VueRouter from "vue-router";
import VueAnalytics from "vue-analytics";

import Home from "@/js/Views/Home";
import About from "@/js/Views/About";
import ContactUs from "@/js/Views/ContactUs";

import terms from "@/js/Views/terms";
import faq from "@/js/Views/faq";
import btts from "@/js/Views/btts";
import rollover from "@/js/Views/rollover";
import botds from "@/js/Views/botds";
import trebles from "@/js/Views/trebles";
import razor5odds from "@/js/Views/razor5odds";
import daily2odd from "@/js/Views/daily2odd";
import administrator from "@/js/Views/administrator";
import errorpage from "@/js/Views/errorpage";
//import Reset from "@/js/Views/Reset";

//Secured routes
import NewTip from "@/js/Views/NewTip";
import Dashboard from "@/js/Views/Dashboard";

//Officers
import editprofile from "@/js/Views/editprofile";
import password from "@/js/Views/password";
//Admin
import bookings from "@/js/Views/pages/bookings";
import termsEdit from "@/js/Views/pages/termsEdit";
import winnings from "@/js/Views/pages/winnings";
import linksEdit from "@/js/Views/pages/linksEdit";

import photoEdit from "@/js/Views/pages/photoEdit";
import Officer from "@/js/Views/Officer";
import allbet from "@/js/Views/allbet";

//Vuex Store
import Store from "./stores";

//Route append
const routesWithPrefix = (prefix, routes) => {
    return routes.map(route => {
        route.path = `${prefix}${route.path}`;

        return route;
    });
};

Vue.use(VueRouter),
    (VueAnalytics,
    {
        // id: "UA-156298265-1",
        // router
    });

const router = new VueRouter({
    mode: "history",
    routes: [
        {
            path: "/",
            name: "home",
            component: Home,
            meta: {
                auth: undefined
            }
        },
        {
            path: "/about",
            name: "about",
            component: About
        },
        {
            path: "/contact",
            name: "contactus",
            component: ContactUs
        },
        {
            path: "/terms",
            name: "terms",
            component: terms
        },
        {
            path: "/faq",
            name: "faq",
            component: faq
        },
        {
            path: "/btts",
            name: "btts",
            component: btts
        },
        {
            path: "/today-acca",
            name: "rollover",
            component: rollover
        },
        {
            path: "/daily2odd",
            name: "daily2odd",
            component: daily2odd
        },
        {
            path: "/trebles",
            name: "trebles",
            component: trebles
        },
        {
            path: "/bet-of-the-day",
            name: "botds",
            component: botds
        },
        {
            path: "/razor-5-odds",
            name: "razor5odds",
            component: razor5odds
        },
        {
            path: "/errorpage",
            name: "errorpage",
            component: errorpage
        },

        {
            path: "/administrator",
            name: "administrator",
            component: administrator,
            meta: {
                auth: false
            }
        },

        //Admin routes
        ...routesWithPrefix("/dashboard/pages/", [
            {
                path: "bookings",
                name: "bookings",
                component: bookings,
                meta: {
                    requiresAdmin: true
                }
            },
            {
                path: "terms",
                name: "TERMSEDIT",
                component: termsEdit,
                meta: {
                    requiresAdmin: true
                }
            },

            {
                path: "winnings",
                name: "WINNINGS",
                component: winnings,
                meta: {
                    requiresAdmin: true
                }
            },

            //Start Social media
            {
                path: "links",
                name: "LINKSEDIT",
                component: linksEdit,
                meta: {
                    requiresAdmin: true
                }
            },
            // end social

            {
                path: "betting-tips",
                name: "allbet",
                component: allbet,
                meta: {
                    requiresAdmin: true
                }
            },
            {
                path: "password",
                name: "password",
                component: password,
                meta: {
                    requiresAdmin: true
                }
            },

            {
                path: "ads",
                name: "PHOTOEDIT",
                component: photoEdit,
                meta: {
                    requiresAdmin: true
                }
            }
        ]),
        ...routesWithPrefix("/dashboard/", [
            {
                path: "officers",
                name: "OFFICER",
                component: Officer,
                meta: {
                    requiresAdmin: true
                }
            }
        ]),
        //User ROUTESs

        {
            path: "/dashboard",
            name: "dashboard",
            component: Dashboard,
            meta: {
                auth: true
            }
        },

        {
            path: "/dashboard/editprofile",
            name: "editprofile",
            component: editprofile,
            meta: {
                requiresOfficer: true
            }
        },

        {
            path: "/dashboard/new-tip",
            name: "upload-tip",
            component: NewTip
        },

        {
            path: "*",
            redirect: "/errorpage"
        }
    ]
});

// vue google analytics
Vue.use(VueAnalytics, {
    id: "UA-139882122-2",
    router
});

router.beforeEach((to, from, next) => {
    //Implements auth
    if (to.fullPath.indexOf("/dashboard") != "-1") {
        if (Store.state.Nafc.user_token === null) {
            next("/administrator");
        }
    } else {
        next();
    }
    if (to.fullPath === "/administrator") {
        if (Store.state.Nafc.user_token != null) {
            next("/dashboard");
        }
    } else {
        next();
    }

    //checks for admin and officer route and protect them adequately

    if (to.matched.some(record => record.meta.requiresAdmin)) {
        if (Store.state.Nafc.user_detail.role_id == 1) {
            next();
        } else {
            next("/dashboard");
        }
    }

    if (to.matched.some(record => record.meta.requiresOfficer)) {
        if (Store.state.Nafc.user_detail.role_id == 2) {
            next();
        } else {
            next("/dashboard");
        }
    }
});
export default router;
