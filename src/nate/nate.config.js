
const path             = require("path");
const { promises: fs } = require("fs");
fs.copyFile( 'src/nate/index.html', 'index.html' );
fs.copyFile( 'src/nate/manifest.json', 'manifest.json' );
fs.copyFile( 'src/nate/manifest.json', 'dist/manifest.json' );

async function copyDir( src, dest ) {
  await fs.mkdir( dest, { recursive:true } );
  let entries = await fs.readdir( src, { withFileTypes:true } );
  for( let entry of entries ) {
    let srcPath  = path.join(  src,  entry.name );
    let destPath = path.join( dest,  entry.name );
    entry.isDirectory()
      ? await copyDir(     srcPath, destPath )
      : await fs.copyFile( srcPath, destPath ); } }

copyDir( 'img', 'dist/img' ).then();
