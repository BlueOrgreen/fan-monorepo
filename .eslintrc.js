/** @type {import("eslint").Linter.Config} */
module.exports = {
    ignorePatterns: ['apps/**', 'packages/**'],
    extends: [require.resolve('@fan-app/code/eslint/lib')],
    parserOptions: {
        project: true,
    },
};
