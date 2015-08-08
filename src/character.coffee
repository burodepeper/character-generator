module.exports =
  class Character
    init: ->
      @generateGender()
      @generateAge()
      @generateContinent()

    show: ->
      console.log "gender:   ", @gender
      console.log "age:      ", @age
      console.log "continent:", @continent

    getRandomInt: (min, max) ->
      r = Math.random()
      diff = max - min
      value = min + Math.floor(diff * r)

    generateGender: ->
      r = @getRandomInt 1, 100
      @gender = "female"
      if r > 50
        @gender = "male"
      return

    generateAge: ->
      r = @getRandomInt 1, 100
      if r <= 66
        @age = "adult"
      else if r <= 92
        @age = "child"
      else
        @age = "elderly"
      return

    generateContinent: ->
      r = @getRandomInt 1, 100
      if r <= 60
        @continent = "asia"
      else if r <= 75
        @continent = "africa"
      else if r <= 89
        @continent = "america"
      else
        @continent = "europe"
      return
