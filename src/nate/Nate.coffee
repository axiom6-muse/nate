
#mport { tester } from  '../../../lib/pub/test/Tester.js'
import { createApp } from 'vue'    #
import { createRouter, createWebHistory } from 'vue-router'

# import PictJson from './Pict.json'

class Nate

  Nate.appName   = 'Nate'
  Nate.mode      = `import.meta.env.MODE`

  Nate.start = () ->
    Nate.addToHead()
    Jitter.init()
    return

  # Add these <link> tags to <head> because vite build makes a mess of them
  Jitter.addToHead = () ->
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
    Nate.app       = 'Nate'
    Nate.vue()
    return

  # 3. Launches Vue with Home page and a Toc for Prin Info Know and Wise practices
  Jitter.vue = () ->
    Jitter.app = createApp( Home.Dash   )
    Jitter.app.provide('app',    Jitter.app )
    Jitter.app.provide('mix',    Jitter.mix )
    Jitter.app.provide('nav',    Jitter.nav )
    Jitter.app.provide('choice', Jitter.choice )
    Jitter.app.provide('tester', tester     )
    router = Jitter.router( Jitter.routes )
    Jitter.app.use(        router )
    Jitter.nav.router    = router
    Jitter.app.mount('j-jitter')
    Jitter.nav.doRoute( { compKey:'Home' } )
    return

  # Lazy loader with dynamic import()
  Jitter.lazy = (name) -> () ->
    path = "../../#{name}.js"
    if path is false then {}
    return `import( /* @vite-ignore */ path )`

  # Vue Router Routes
  Jitter.router = ( routes ) ->
    createRouter( { routes:routes, history:createWebHistory() } )

  Jitter.createRouteNames = ( routes ) ->
    routeNames = []
    for route in routes
      routeNames.push( route.name )
    routeNames

export default Jitter
