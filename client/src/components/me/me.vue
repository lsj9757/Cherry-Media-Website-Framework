<template>
  <div class="me">
    <p>{{ msg }}</p>
  </div>
</template>

<script>
export default {
  name: 'me',
  data () {
    return {
      msg: `this is me page`
    }
  }
}
</script>

<style lang="stylus" scoped>
  .me
    width 100%
    height 100%
    background-color purple
</style>
