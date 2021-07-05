module.exports = {
  chainWebpack: config => {
    config.plugin('html').tap(args => {
      args[0].title = 'Vue3 API Frontend'
      return args
    })
  }
}
