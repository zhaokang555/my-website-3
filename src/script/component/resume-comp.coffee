CardComp = require './card-comp'
Vue.component 'card-comp', CardComp

VueAsyncComputed = require 'vue-async-computed'
Vue.use VueAsyncComputed


RsumeComp = Vue.extend 
  template: '<card-comp :prop="resume"></card-comp>' 
  asyncComputed:
    resume: ->
      p = new Promise (resolve, reject) ->
        Vue.http.get('http://115.159.67.117:3000/resume').then (res) ->
          # console.log res
          resolve res.data # resolve res.json()
          
module.exports = RsumeComp