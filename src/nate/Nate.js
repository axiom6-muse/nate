//mport { tester } from  '../../../lib/pub/test/Tester.js'
var Nate;

import {
  createApp,
  h
} from 'vue';

import Main from "./Main.vue";

Nate = (function() {
  //mport { createRouter, createWebHistory } from 'vue-router'

    // import PictJson from './Pict.json'
  class Nate {
    static start() {
      Nate.addToHead();
      Nate.init();
    }

    static addToHead() {
      var head, maniElem, siteElem;
      // manifest = """<link href="manifest.json"  rel="manifest" crossorigin="use-credentials">"""
      // siteLink = """<link href="https://vit-muse.web.app/" rel="canonical">"""
      maniElem = document.createElement('link');
      maniElem.href = "manifest.json?v=2";
      maniElem.rel = "manifest";
      maniElem['crossorigin'] = "use-credentials";
      siteElem = document.createElement('link');
      siteElem.href = window.location.href;
      siteElem.rel = "canonical";
      head = document.getElementsByTagName("head")[0];
      head.appendChild(maniElem);
      head.appendChild(siteElem);
    }

    static init() {
      Nate.vue();
    }

    static vue() {
      Nate.app = createApp(Main);
      Nate.app.mount('#main');
    }

  };

  Nate.appName = 'Nate';

  Nate.mode = import.meta.env.MODE;

  return Nate;

}).call(this);

export default Nate;
