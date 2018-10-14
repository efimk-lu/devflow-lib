module.exports = {
  env: {
    es6: true,
    node: true,
    mocha: true
  },
  extends: ["prettier", "eslint:recommended"],
  parserOptions: {
    ecmaVersion: 2016,
    sourceType: "module"
  }
};
