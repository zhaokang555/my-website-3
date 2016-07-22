VueAsyncComputed = require 'vue-async-computed'
Vue.use VueAsyncComputed

OthersComp = Vue.extend 
  template: '
    <div class="ui animated big link list">
      <a v-for="row in others.contentArr" href="row.url" class="item" target="_blank">
        <i class="{{row.icon}}"></i>{{row.title}}
      </a>
    </div> 
  '
  asyncComputed:
    others: ->
      p = new Promise (resolve, reject) ->
        Vue.http.get('http://115.159.67.117:3000/others').then (res) ->
          console.log res
          resolve res.data # resolve res.json()

module.exports = OthersComp