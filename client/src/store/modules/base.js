// module of baseInfo
// 管理基本状态信息

const state = {
  somethingsState: null,
}

const getters = {
  somethingsState: state => state.somethingsState,


}

const actions = {
  somethingsState ({ commit, state }, products) => commit('setSomethinsState'),


}

const mutations = {
  setSomethinsState (state, status) => state.somethingsState = status,
}



export default {
  state,
  getters,
  actions,
  mutations
}

