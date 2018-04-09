<template>
  <div id="app">
    <router-link to="/"> home </router-link>
    <router-link to='around'> around </router-link>
    <router-link to='message'> message </router-link>
    <router-link to='me'> me </router-link>
    <router-view/>
  </div>
</template>

<script>

export default {
  name: 'App'
}
</script>

<style lang='stylus'>
#app
  width 100%
  height 100%
</style>
