<template>
  <div>
    <div class="images" v-viewer="{movable: false}">
      <img v-for="src in images" :src="src" :key="src" alt="x">
    </div>
    <button type="button" @click="show">Show</button>
  </div>
</template>
<script>
  // import 'viewerjs/dist/viewer.css'
  import { directive as viewer } from "v-viewer"
  export default {
    directives: {
      viewer: viewer({
        debug: true,
      }),
    },
    data() {
      return {
        images: [
          "../../img/river/river1.img",
          "../../img/river/river2.img",
          "../../img/river/river3.img",
          "../../img/river/river4.img",
          "../../img/river/river7.img",
          "../../img/river/river9.img",
          "../../img/river/riverA.img",
          "../../img/river/riverD.img",
          "../../img/river/riverE.img",
          "../../img/river/riverF.img",
          "../../img/river/riverG.img"
        ]
      };
    },
    methods: {
      show () {
        const viewer = this.$el.querySelector('.images').$viewer
        viewer.show()
      }
    }
  }
</script>

<style lang="scss" rel="stylesheet/scss" scoped>
.image {
  width: calc(20% - 10px);
  cursor: pointer;
  margin: 5px;
  display: inline-block;
}
</style>