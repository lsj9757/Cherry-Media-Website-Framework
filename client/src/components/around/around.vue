<template>
  <div class="around">
    <p>{{ msg }}</p>
  </div>
</template>

<script>
export default {
  name: 'around',
  data () {
    return {
      msg: `this is around page`
    }
  }
}
</script>

<style lang="stylus" scoped>
  .around
    width 100%
    height 100%
    background-color khaki
</style>
