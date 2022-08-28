const { instantiate } = require("@wapc/host");
const { encode, decode } = require("@msgpack/msgpack");
const { readFile } = require("fs/promises");
const path = require("path");

const [_node, _self, wasm_path, operation, payload_args] = process.argv;

if (!wasm_path || !operation || !payload_args) {
    console.error("Use node nodehost.js /path/to/module.wasm [payload in json]");
}

const main = async () => {
    const buffer = await readFile(path.join(__dirname, wasm_path));
    const host = await instantiate(buffer);
    const payload = encode(JSON.parse(payload_args));
    const result = await host.invoke(operation, payload);
    const decoded = decode(result);

    console.log("Result:", decoded);
};

main()
    .catch(
        err => console.error("Error invoking WASM", err.message)
    );