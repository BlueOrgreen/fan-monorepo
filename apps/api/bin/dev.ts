import nodemon from 'nodemon';

nodemon({
    script: 'node_modules/.bin/nest',
    args: [
        'start',
        '-c',
        'nest-cli.json',
        '-p',
        'tsconfig.build.json',
        '-w',
        '--preserveWatchOutput',
    ],
    watch: ['node_modules/@fan-app/**/dist/**/*'],
    ignore: [],
    ignoreRoot: [],
    ext: 'cjs',
}).on('quit', () => {
    process.exit();
});
