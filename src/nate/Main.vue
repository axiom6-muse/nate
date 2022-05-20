
<template>
  <div    class="title">Hays Masonary</div>
  <div    class="phone">Phone: (720) 364-7298</div>
  <div    class="build">20 plus years buildimg:</div>
  <div    class="stone">Fireplaces Patios Walkways</div>
  <n-sbox class=slide :items="items" :options="options" ></n-sbox>
</template>

<script type="module">

  import SBox from "vue3-picture-swipe"

  let Main = {

    components: { 'n-sbox':SBox },

    setup() {
      let thumb = 'http://via.placeholder.com/64x64';
      //, w:600,h:400, title:'Title 1'
      let items = [
        { src:"img/river/river1.jpg", thumbnail:thumb, w:720,h:960, title:'Title 1' },
        { src:"img/river/river2.jpg", thumbnail:thumb, w:960,h:720, title:'Title 1' },
        { src:"img/river/river3.jpg", thumbnail:thumb, w:720,h:960, title:'Title 1' },
        { src:"img/river/river4.jpg", thumbnail:thumb, w:720,h:960, title:'Title 1' },
        { src:"img/river/river7.jpg", thumbnail:thumb, w:720,h:960, title:'Title 1' },
        { src:"img/river/river9.jpg", thumbnail:thumb, w:360,h:480, title:'Title 1' },
        { src:"img/river/riverA.jpg", thumbnail:thumb, w:720,h:960, title:'Title 1' },
        { src:"img/river/riverE.jpg", thumbnail:thumb, w:720,h:960, title:'Title 1' },
        { src:"img/river/riverF.jpg", thumbnail:thumb, w:720,h:960, title:'Title 1' },
        { src:"img/river/riverG.jpg", thumbnail:thumb, w:720,h:960, title:'Title 1' }
      ];

      let options = { preloadFirstSlide:true};

    return { items, options } }

    }

  export default Main

</script>

<style lang="less">
   body { margin:0; background:black; color:wheat; text-align:center; }
   .title { position:absolute; left:0; top:0;   width:100%; height:8%;  font-size:3em; }
   .phone { position:absolute; left:0; top:8%;  width:100%; height:5%;  font-size:2em; }
   .build { position:absolute; left:0; top:13%; width:100%; height:5%;  font-size:2em; }
   .stone { position:absolute; left:0; top:18%; width:100%; height:5%;  font-size:2em; }
   .slide { position:absolute; left:0; top:23%; width:100%; height:77%; font-size:1em; }
   .pswp  { position:absolute; left:0; top:23%; width:100%; height:77%; font-size:1em; }

</style>
