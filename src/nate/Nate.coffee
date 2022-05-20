
#mport { tester } from  '../../../lib/pub/test/Tester.js'
import { createApp, h } from 'vue'    #
import Main from "./Main.vue"
#mport { createRouter, createWebHistory } from 'vue-router'

# import PictJson from './Pict.json'

class Nate

  Nate.appName   = 'Nate'
  Nate.mode      = `import.meta.env.MODE`

  Nate.start = () ->
    Nate.addToHead()
    Nate.init()
    return

  # Add these <link> tags to <head> because vite build makes a mess of them
  Nate.addToHead = () ->
    # manifest = """<link href="manifest.json"  rel="manifest" crossorigin="use-credentials">"""
    # siteLink = """<link href="https://vit-muse.web.app/" rel="canonical">"""
    maniElem                = document.createElement('link')
    maniElem.href           = "manifest.json?v=2"
    maniElem.rel            = "manifest"
    maniElem['crossorigin'] = "use-credentials"
    siteElem      = document.createElement('link')
    siteElem.href = window.location.href
    siteElem.rel  = "canonical"
    head          = document.getElementsByTagName("head")[0]
    head.appendChild(maniElem)
    head.appendChild(siteElem)
    return

  # 2. Initializes publish, subscribe and navigation with Stream and refines Practices with Build and merge.
  Nate.init =   () ->
    Nate.vue()
    return

  # 3. Launches Vue with Home page and a Toc for Prin Info Know and Wise practices
  Nate.vue = () ->
    Nate.app  = createApp( Main )
    Nate.app.mount('#main')
    return



export default Nate
