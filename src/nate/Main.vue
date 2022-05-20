
<template>
  <h1     class="title">Hays Masonary</h1>
  <div    class="fires">Fireplaces</div>
  <div    class="patio">Patios</div>
  <div    class="walks">Walkways</div>
  <n-sbox class=slide :items="items"></n-sbox>
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
        { src:"img/river/river2.jpg", thumbnail:thumb, w:600,h:400, title:'Title 1' },
        { src:"img/river/river3.jpg", thumbnail:thumb, w:600,h:400, title:'Title 1' },
        { src:"img/river/river4.jpg", thumbnail:thumb, w:600,h:400, title:'Title 1' },
        { src:"img/river/river7.jpg", thumbnail:thumb, w:600,h:400, title:'Title 1' },
        { src:"img/river/river9.jpg", thumbnail:thumb, w:600,h:400, title:'Title 1' },
        { src:"img/river/riverA.jpg", thumbnail:thumb, w:600,h:400, title:'Title 1' },
        { src:"img/river/riverE.jpg", thumbnail:thumb, w:600,h:400, title:'Title 1' },
        { src:"img/river/riverF.jpg", thumbnail:thumb, w:600,h:400, title:'Title 1' },
        { src:"img/river/riverG.jpg", thumbnail:thumb, w:600,h:400, title:'Title 1' }
      ];

    return { items } }

    }

  export default Main

</script>

<style lang="less">
   body { margin:0; background:black; }
   .title { position:absolute; left:0;   top:0;   width:100%; height:10%; color:wheat; text-align:center;}
   .fires { position:absolute; left:5%;  top:10%; width:30%;  height:10%; color:wheat; }
   .patio { position:absolute; left:35%; top:10%; width:30%;  height:10%; color:wheat; }
   .walks { position:absolute; left:65%; top:10%; width:30%;  height:10%; color:wheat; }
   .slide { position:absolute; left:0;   top:20%; width:100%; height:80%; color:wheat; }

</style>
