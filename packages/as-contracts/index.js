const fs = require("fs");
const loader = require("./node_modules/@assemblyscript/loader");
module.exports = loader.instantiateSync(fs.readFileSync(__dirname + "/build/as-contracts.wasm"), { /* imports */ })