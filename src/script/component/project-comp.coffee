CardComp = require './card-comp'
Vue.component 'card-comp', CardComp

VueAsyncComputed = require 'vue-async-computed'
Vue.use VueAsyncComputed


ProjectComp = Vue.extend  
  template: '<card-comp :prop="project"></card-comp>'
  asyncComputed:
    project: ->
      p = new Promise (resolve, reject) ->
        Vue.http.get('http://115.159.67.117:3000/project').then (res) ->
          # console.log res
          resolve res.data # resolve res.json()
      # p.then (data) ->
      #   data
      # p

      # 为什么这样不行?
      # Vue.http.get('http://115.159.67.117:3000/project').then (res) ->
      #   console.log res
      #   resolve res.data


module.exports = ProjectComp