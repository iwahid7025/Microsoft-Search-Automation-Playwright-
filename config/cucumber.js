const { format } = require("path");
const { formatWithOptions } = require("util");

module.exports = {
    default: {
        paths: [
            'src/tests/features',
        ],
        dryrun: false,
        format: [
            "progress-bar",
            "summary",
            "json:reports/cucumber-report.json",
            "html:reports/cucumber-report.html"
        ],
        formatOptions: {
            colorsEnabled: true,
            snippetInterface: 'async-wait'
        },
        require: [
            "src/tests/step-definitions/*.ts"
        ],
        requireModule: [
            "ts-node/register"
        ]
    }
}
