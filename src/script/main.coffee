VueRouter = require 'vue-router'
VueResource = require 'vue-resource'
# VueAsyncComputed = require 'vue-async-computed'
ProjectComp = require './component/project-comp'
RsumeComp = require './component/resume-comp'
OthersComp = require './component/others-comp'
# AboutMeComp = require './component/about-me-comp'

Vue.use VueResource
# Vue.use VueAsyncComputed


# 创建一个路由器实例
router = new VueRouter
  # 配置：

  # default: true
  hashbang: false 

  # default: "v-link-active"
  linkActiveClass: 'active' 

# 定义路由规则
router.map
  # '/':
  #   component: ProjectComp
  '/project': 
    component: ProjectComp
  '/resume': 
    component: RsumeComp
  '/others':
    component: OthersComp
  # '/about-me':
  #   component: AboutMeComp

App = Vue.extend
  el: ->
    '#app'
  data: ->
    title: 'Zhao Kang\'s'
  ready: ->
    console.log 'v2'

    # 默认跳转到project
    if @$route.path is '/'
      router.go
        path: '/project'
      console.log "Jump from '/' to '/project'"


# 路由器会创建一个 App 实例，并且挂载到选择符 #app 匹配的元素上。
router.start(App, '#app')

