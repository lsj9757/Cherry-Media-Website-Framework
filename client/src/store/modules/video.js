// module of video
// 管理视频信息

const state = {
  videos: {}, // ajax拿到的video信息
  currentVideoTemplate: null, // 当前选择的 video id 或 videl 所有基本信息
  preUploadVideo: null, // 从本地选取的视频
}

const getters = {
  videos: state => state.videos,
  currentVideoTemplate: state => state.currentVideoTemplate,
  preUploadVideo: state => state.preUploadVideo,


}

const actions = {
  videos ({ commit, state }, products) => commit('setVideos'),
  currentVideoTemplate ({ commit, state }, products) => commit('setCurrentVideoTemplate'),
  preUploadVideo ({ commit, state }, products) => commit('setPreUploadVideo'),


}

const mutations = {
  setVideos (state, status) => state.videos = status,
  setCurrentVideoTemplate (state, status) => state.videos = status,
  setPreUploadVideo (state, status) => state.videos = status,


}



export default {
  state,
  getters,
  actions,
  mutations
}

