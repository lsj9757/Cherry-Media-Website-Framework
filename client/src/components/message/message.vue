<template>
  <div class="message">
    <p>{{ msg }}</p>
  </div>
</template>

<script>
export default {
  name: 'message',
  data () {
    return {
      msg: `this is message page`
    }
  }
}
</script>

<style lang="stylus" scoped>
  .message
    width 100%
    height 100%
    background-color lightgray
</style>
