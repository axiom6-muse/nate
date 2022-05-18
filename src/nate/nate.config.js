const { promises: fs } = require("fs");
fs.copyFile( 'src/nate/index.html', 'index.html' );
fs.copyFile( 'src/nate/manifest.json', 'manifest.json' );
fs.copyFile( 'src/nate/manifest.json', 'dist/manifest.json' );