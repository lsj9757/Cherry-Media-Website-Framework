import Vue from 'vue'
import Router from 'vue-router'

import home from '@/components/home/home'
import around from '@/components/around/around'
import message from '@/components/message/message'
import me from '@/components/me/me'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [
    {
      path: '/',
      redirect: '/home'
    },
    {
      path: '/home',
      name: 'home',
      component: home
    },
    {
      path: '/around',
      name: 'around',
      component: around
    },
    {
      path: '/message',
      name: 'message',
      component: message
    },
    {
      path: '/me',
      name: 'me',
      component: me
    }
  ]
})
