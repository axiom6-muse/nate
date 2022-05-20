
<template>
  <div>
    <n-viewer :options="options" :images="images"
        class="viewer" ref="elem"> <!-- @inited="inited" -->
      <div>
        <div class="images">
          <img v-for="src in images" :src="src" :key="src" alt="x">
        </div>
        <button type="button" @click="show">Show</button>
      </div>
      </n-viewer>
  </div>
</template>

<script type="module">

  // import 'viewerjs/dist/viewer.css'
  import { component as Viewer } from "v-viewer"
  import { ref } from 'vue';

  let Main = {

    components: { 'n-viewer':Viewer },

    setup() {
      const elem = ref(null);
      let images = [
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
      ];

      let options = { movable: false };

      const show = function() {
        elem['value'].show();
      }
    return { images, options, show, elem } }

    }

  export default Main

</script>

<style lang="less">

.image {
  width: calc(20% - 10px);
  cursor: pointer;
  margin: 5px;
  display: inline-block;
}
</style>