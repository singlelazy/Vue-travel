'use strict'
const utils = require('./utils')
const webpack = require('webpack')
const config = require('../config')
const merge = require('webpack-merge')
const path = require('path')
const baseWebpackConfig = require('./webpack.base.conf')
const CopyWebpackPlugin = require('copy-webpack-plugin')
const HtmlWebpackPlugin = require('html-webpack-plugin')
const FriendlyErrorsPlugin = require('friendly-errors-webpack-plugin')
const portfinder = require('portfinder')
/*新加数据库连接*/
const mysql=require('mysql')
var db=mysql.createPool({host:"localhost",user:"root",password:"ys3872",database:"travel"})
/*新家数据库连接 end()*/
/*新加express*/
const express=require('express')
const server=express();
var apiRoutes = express.Router()
server.use('/api', apiRoutes)
/*新增express end*/

const HOST = process.env.HOST
const PORT = process.env.PORT && Number(process.env.PORT)

const devWebpackConfig = merge(baseWebpackConfig, {
  module: {
    rules: utils.styleLoaders({ sourceMap: config.dev.cssSourceMap, usePostCSS: true })
  },
  // cheap-module-eval-source-map is faster for development
  devtool: config.dev.devtool,

  // these devServer options should be customized in /config/index.js
  devServer: {
    clientLogLevel: 'warning',
    historyApiFallback: {
      rewrites: [
        { from: /.*/, to: path.posix.join(config.dev.assetsPublicPath, 'index.html') },
      ],
    },
    hot: true,
    contentBase: false, // since we use CopyWebpackPlugin.
    compress: true,
    host: HOST || config.dev.host,
    port: PORT || config.dev.port,
    open: config.dev.autoOpenBrowser,
    overlay: config.dev.errorOverlay
      ? { warnings: false, errors: true }
      : false,
    publicPath: config.dev.assetsPublicPath,
    proxy: config.dev.proxyTable,
    quiet: true, // necessary for FriendlyErrorsPlugin
    watchOptions: {
      poll: config.dev.poll,
    },
    /*新加路由规则*/
    before(server) {
      server.get('/api/home', (req, res) => {
        db.query(`SELECT * FROM home_table`,(err,data)=>{
          if(err){
            console.log(err);
            res.status(500).send('database').end()
          }else{
            res.send(data).end()
          }
        })
      })
      server.get('/api/city', (req, res) => {
        db.query(`SELECT * FROM city_table ORDER BY letter ASC`,(err,city_data)=>{
          if(err){
            console.log(err);
            res.status(500).send('database').end()
          }else{
            db.query(`SELECT letter FROM city_table GROUP BY letter ORDER BY letter ASC`,(err,letter_data)=>{
              if(err){
                console.log(err);
                res.status(500).send('database').end()
              }else{
                res.send({city_data,letter_data}).end()
              }
            })
          }
        })
      })
      server.get('/api/detail', (req, res) => {
        db.query(`SELECT * FROM detail_table`,(err,data)=>{
          if(err){
            console.log(err);
            res.status(500).send('database').end()
          }else{
            res.send(data).end()
          }
        })
      })
    }
    /*新加路由规则结束*/
  },
  plugins: [
    new webpack.DefinePlugin({
      'process.env': require('../config/dev.env')
    }),
    new webpack.HotModuleReplacementPlugin(),
    new webpack.NamedModulesPlugin(), // HMR shows correct file names in console on update.
    new webpack.NoEmitOnErrorsPlugin(),
    // https://github.com/ampedandwired/html-webpack-plugin
    new HtmlWebpackPlugin({
      filename: 'index.html',
      template: 'index.html',
      inject: true
    }),
    // copy custom static assets
    new CopyWebpackPlugin([
      {
        from: path.resolve(__dirname, '../static'),
        to: config.dev.assetsSubDirectory,
        ignore: ['.*']
      }
    ])
  ]
})

module.exports = new Promise((resolve, reject) => {
  portfinder.basePort = process.env.PORT || config.dev.port
  portfinder.getPort((err, port) => {
    if (err) {
      reject(err)
    } else {
      // publish the new Port, necessary for e2e tests
      process.env.PORT = port
      // add port to devServer config
      devWebpackConfig.devServer.port = port

      // Add FriendlyErrorsPlugin
      devWebpackConfig.plugins.push(new FriendlyErrorsPlugin({
        compilationSuccessInfo: {
          messages: [`Your application is running here: http://${devWebpackConfig.devServer.host}:${port}`],
        },
        onErrors: config.dev.notifyOnErrors
        ? utils.createNotifierCallback()
        : undefined
      }))

      resolve(devWebpackConfig)
    }
  })
})
