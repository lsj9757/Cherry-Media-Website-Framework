<template>
  <div class="home">
    <p>{{ msg }}</p>
  </div>
</template>

<script>
export default {
  name: 'home',
  data () {
    return {
      msg: `this is home page`
    }
  }
}
</script>

<style lang="stylus" scoped>
  .home
    width 100%
    height 100%
    background-color skyblue
</style>
