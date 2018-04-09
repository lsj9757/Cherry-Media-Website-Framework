// module of user
// 管理用户信息

const state = {
  username: '',
  password: '',
  id: null,
  baseInfomation: {},
  loginStatus: 0,

}

const getters = {
  username: state => state.username,
  password: state => state.password,
  id: state => state.id,
  baseInfomation: state => state.baseInfomation,
  loginStatus: state => state.loginStatus,


}

const actions = {
  username ({ commit, state }, products) => commit('setUsername'),
  password ({ commit, state }, products) => commit('setPassword'),
  id ({ commit, state }, products) => commit('setId'),
  baseInfomation ({ commit, state }, products) => commit('setBaseInfomation'),
  loginStatus ({ commit, state }, products) => commit('setLoginStatus'),
}

const mutations = {
  setUsername (state, status) => state.username = status,
  setPassword (state, status) => state.password = status,
  setId (state, status) => state.id = status,
  setBaseInfomation (state, status) => state.baseInfomation = status,
  setLoginStatus (state, status) => state.loginStatus = status,
}



export default {
  state,
  getters,
  actions,
  mutations
}

