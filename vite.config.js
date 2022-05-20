import {defineConfig} from 'vite';
import vue            from '@vitejs/plugin-vue';
import LessRollup     from 'rollup-plugin-less';
import CoffeeRollup   from 'rollup-plugin-coffee-script';
const { promises: fs } = require("fs");
//const path             = require("path");
//server: { hmr: { overlay:false } },

export default ( { command, mode } ) => {

  if( command === 'build' ) {
    console.log( 'vite.config.js build', { command:command, mode:mode } );
    return defineConfig({
      plugins:[vue()] } ); }    // server: { https:true } }
  else if( command === 'serve' ) {
    console.log( 'vite.config.js serve', { command:command, mode:mode } );
    return defineConfig( {
      plugins: [vue()],
      build:  { rollupOptions:{
          plugins:CoffeeRollup() } } } ); }
  else {
    console.log( 'vite.config.js dev?', { command:command, mode:mode } );
    return defineConfig( {
      plugins: [vue()],
      build: { rollupOptions:{ plugins:LessRollup() } } } ); }
};

