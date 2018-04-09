import Vue from 'Vue'
import Vuex from 'Vuex'


import base from './modules/base'
import video from './modules/video'
import user from './modules/user'


export default new Vuex.Store({
	modules: {
		base,
		video,
		user
	}
})