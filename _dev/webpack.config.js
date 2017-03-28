var path = require('path');
const ExtractTextPlugin = require('extract-text-webpack-plugin');
const UglifyJsPlugin = require('uglifyjs-webpack-plugin');

module.exports = [{
  // Bundle for JS
  entry: './js/theme.js',
  output: {
    filename: 'theme.js',
    path: '../assets/js'
  },
  module: {
    rules: [{
      test: '/\.js$/',
      exclude: '/node-modules/',
      loader: 'babel-loader'
    }]
  },
  externals: {
    prestashop: 'prestashop'
  },
  plugins: [
    new UglifyJsPlugin()
  ]

}, {
  //Bundle for SCSS
  entry: './scss/theme.scss',
  output: {
    filename: 'theme.css',
    path: '../assets/css'
  },
  devtool: 'source-map',
  module: {
    rules: [
      {
        test: /\.scss$/,
        use: ExtractTextPlugin.extract({
          use: [{
              loader: 'css-loader', options: {
                sourceMap: true,
                importLoaders: 1
              }
            }, {
              loader: 'postcss-loader', options: {
                plugins: function (){
                  return [
                    require('autoprefixer')
                  ]
                }
              }
            }, {
              loader: 'sass-loader', options: {
                sourceMap: true
              }
            }
            ],
            fallback: 'style-loader',
        })
      }, {
        test: /.(png|woff(2)?|eot|ttf|svg)(\?[a-z0-9=\.]+)?$/,
        use: 'file-loader?name=../css/fonts/[hash].[ext]'
      }
    ]
  },
  plugins: [
    new ExtractTextPlugin('theme.css'),
    new UglifyJsPlugin()
  ]
  
}]