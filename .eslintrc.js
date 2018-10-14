module.exports = {
  env: {
    es6: true,
    node: true,
    mocha: true
  },
  extends: ["prettier", "eslint:recommended", "plugin:flowtype/recommended"],
  parserOptions: {
    ecmaVersion: 2016,
    sourceType: "module"
  },
  plugins: ["flowtype"],
  settings: {
    flowtype: {
      onlyFilesWithFlowAnnotation: true
    }
  }
};
