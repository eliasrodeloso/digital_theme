var webpack = require('webpack');
var ExtractTextPlugin = require("extract-text-webpack-plugin");

var plugins = [];

plugins.push(
  new ExtractTextPlugin('../css/theme.css')
);

module.exports = [{
  // JavaScript
  entry: [
    './js/theme.js'
  ],
  output: {
    path: '../assets/js',
    filename: 'theme.js'
  },
  module: {
    loaders: [{
      test: /\.js$/,
      exclude: /node_modules/,
      loader: "babel-loader",
      query: {
        presets: ['es2015']
      }
    }]
  },
  externals: {
    prestashop: 'prestashop'
  },
  plugins: plugins,
  resolve: {
    extensions: ['', '.js']
  }
}, {
  // CSS
  entry: [
    './css/theme.scss'
  ],
  output: {
    path: '../assets/css',
    filename: 'theme.css'
  },
  module: {
    loaders: [{
      test: /\.scss$/,
      loader: ExtractTextPlugin.extract(
        "style",
        "css-loader?sourceMap!postcss!sass-loader?sourceMap"
      )
    }, {
      test: /.(png|woff(2)?|eot|ttf|svg)(\?[a-z0-9=\.]+)?$/,
      loader: 'file-loader?name=../css/[hash].[ext]'
    }]
  },
  plugins: plugins,
  resolve: {
    extensions: ['', '.scss', '.styl', '.less', '.css']
  }
}];
