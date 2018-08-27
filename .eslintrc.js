module.exports = {

    "parser": "babel-eslint",

    "env": {
        "browser": true,
        "commonjs": true,
        "es6": true,
        "node": true,
        "jest": true
    },

    "extends": [
        "eslint:recommended",
        "plugin:react/recommended"
    ],

    "plugins": [
        "react"
    ],

    "parserOptions": {
        "ecmaFeatures": {
            "experimentalObjectRestSpread": true,
            "jsx": true
        },
        sourceType: "module"
    },

    "rules": {
        "react/prop-types": ["off"],
        "semi": ["error", "always"],
        "no-console": ["warn", { allow: ["info", "error"] }],
        "indent": ["error", 4, { SwitchCase: 1 }],
        "linebreak-style": ["error", "unix"],

        // "arrow-parens": ["error", "always"],
        // "react/jsx-uses-react": "error",
        // "react/jsx-uses-vars": "error",
        // "react/jsx-filename-extension": "error",
        // "react/self-closing-comp": "error",
        // "react/no-unescaped-entities": "error",
        // "react/require-default-props": "error",
        // "react/forbid-prop-types": "error",
        // "quotes": ["error", "single"],

    }


};
