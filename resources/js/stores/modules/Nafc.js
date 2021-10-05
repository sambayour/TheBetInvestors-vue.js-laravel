const state = {
  user_detail: [],
  user_token:null,
  user_role: 0,
};

const mutations = {
  set_user_detail(state, value) {
    state.user_detail = value;
  },
  set_user_role(state, value) {
    state.user_role = value;
  },
  set_user_token(state, value) {
    state.user_token = value;
  },
  refresh_user_detail(state, value) {
    state.user_detail = value;
  },
  refresh_user_role(state, value) {
    state.user_role = value;
  },
  refresh_user_token(state, value) {
    state.user_token = value;
  }
};

const actions = {
  // toogle_tTable: ({ commit }, value) => {
  //   commit("set_tTable", value);
  // },
  set_user_detail_ac: ({ commit }, value) => {
    commit("set_user_detail", value);
  },
  set_user_role_ac: ({ commit }, value) => {
    commit("set_user_role", value);
  },
  set_user_token_ac: ({ commit }, value) => {
    commit("set_user_token", value);
  },
  refresh_user_detail_ac: ({ commit }, value) => {
    commit("refresh_user_detail", value);
  },
  refresh_user_role_ac: ({ commit }, value) => {
    commit("refresh_user_role", value);
  },
  refresh_user_token_ac: ({ commit }, value) => {
    commit("refresh_user_token", value);
  },
  
};

const getters = {
  get_user_token: state => {
    return state.user_token;
  },
   get_user_role: state => {
    return state.user_role;
  },
   get_user_detail: state => {
    return state.user_detail;
  },
 
};

export default {
  state,
  mutations,
  actions,
  getters
};
