fs = require 'fs'

module.exports =
  class Character
    init: ->
      @keys = ["gender", "age", "continent", "religion", "literate"]
      for key in @keys
        @[key] = @calculateValueFor key

    show: ->
      for key in @keys
        console.log key+":", @[key]
      return

    getRandomInt: (min, max) ->
      r = Math.random()
      diff = max - min
      value = min + Math.floor(diff * r)

    calculateValueFor: (key) ->
      filename = "../data/"+key+".json"
      stats = require filename
      value = @getValueFrom stats

    getValueFrom: (data) ->
      total = 0
      for key, value of data
        total += value
        data[key] = total
      r = @getRandomInt(1, total)
      for key, value of data
        if r <= value
          return key
