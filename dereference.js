const $RefParser = require("@apidevtools/json-schema-ref-parser");
const args = require('args-parser')(process.argv);

(async () => {
    let schema = await $RefParser.bundle(args.schema);
    console.log(JSON.stringify(schema));
})().catch(err => console.error(err))
