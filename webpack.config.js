var webpack = require('webpack');

module.exports = {
    entry: {
        vendors: [
            'lodash', 'react', 'react-router', 'jquery/dist/jquery.js', 'material-ui', 'bootstrapCss', 'react-tap-event-plugin',
            'reflux'
        ],
        app: [
            'webpack/hot/dev-server', './app/main.js', './app/recipes/main.coffee'
        ]
    },
    resolve:{
        modulesDirectories: ['node_modules'],
        alias: {
            bootstrapCss: 'bootstrap/dist/css/bootstrap.css',
            robotoFont: ['./app/_assets/fonts/roboto/Roboto-Black.ttf']
        }
    },
    plugins: [
        new webpack.optimize.CommonsChunkPlugin('vendors', 'vendors.js'),
        new webpack.ProvidePlugin({
            $: "jquery",
            jQuery: "jquery"
        })
    ],
    output: {
        path: './build',
        filename: '[name].js'
    },
    module: {
        noParse: [],
        loaders: [
            {test: /\.js$|.jsx$|.coffe$/,               loader: 'jsx-loader?harmony'},
            {test: /\.cjsx$/,                           loader: 'coffee-jsx-loader'},
            {test: /\.coffee$/,                         loader: 'coffee-loader'},
            {test: /\.sass$/,                           loader: 'style-loader!css-loader!sass-loader'},
            {test: /\.less/,                            loader: 'style-loader!css-loader!less-loader'},
            {test: /\.css/,                             loader: 'style-loader!css-loader'},
            {test: /\.html$/,                           loader: 'copy-loader'},
            {test: /\.(png|woff|woff2|eot|ttf|svg)$/,   loader: 'file-loader?limit=100000' }


        ]
    }
};

