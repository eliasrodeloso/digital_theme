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
  devtool: 'sourceMap',
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
    
  ]

}, {
  //Bundle for SCSS
  entry: './scss/theme.scss',
  output: {
    filename: 'theme.css',
    path: '../assets/css'
  },
  devtool: 'eval-source-map',
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
        test: /.(woff(2)?|eot|ttf)(\?[a-z0-9=\.]+)?$/,
        use: 'file-loader?name=../css/fonts/[hash].[ext]'
      }, {
        test: /.(png|gif|svg|jpe?g)$/,
        use: [{
          loader: 'file-loader', options:  {
            name: '../img/[hash].[ext]',
            loader: 'image-webpack-loader',
            options: {
              progressive: true,
              optimizationLevel: 6,
              pngquant: {
                quality: '65-90',
                speed: 4
              },
              gifsicle: {
                interlaced: false
              }
            }
          }
        }]
      }
    ]
  },
  plugins: [
    new ExtractTextPlugin('theme.css'),
    new UglifyJsPlugin()
  ]
  
}]