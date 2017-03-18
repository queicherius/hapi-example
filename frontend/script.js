var uuid = require('uuid')

console.log(`
<img src="/images/kitten.png"/><br><br>
How do you do, fellow kids?<br><br>
<small>
  ${uuid()}<br>
  Generated with Node.js ${process.version}
</small>
`)
