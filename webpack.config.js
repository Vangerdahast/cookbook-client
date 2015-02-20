var webpack = require('webpack');

module.exports = {
    entry: {
        vendors: [
            'react', 'react-router', 'jquery/dist/jquery.js', 'bootstrapcss', 'bootstrapjs'
        ],
        app: [
            'webpack/hot/dev-server', './app/main.js', './app/recipes/main.coffee'
        ]
    },
    resolve:{
        alias: {
            bootstrapcss: 'bootstrap/dist/css/bootstrap.css',
            bootstrapjs: 'bootstrap/dist/js/bootstrap.js'

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
            {test: /\.js$|.jsx$/,                       loader: 'jsx-loader'},
            {test: /\.coffee$/,                         loader: 'coffee-loader'},
            {test: /\.sass$/,                           loader: 'style-loader!css-loader!sass-loader'},
            {test: /\.css/,                             loader: 'style-loader!css-loader'},
            {test: /\.html$/,                           loader: 'copy-loader'},
            {test: /\.(png|woff|woff2|eot|ttf|svg)$/,   loader: 'file-loader?limit=100000' }


        ]
    }
};

