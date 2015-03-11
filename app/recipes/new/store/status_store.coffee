Reflux = require('reflux')
statusUpdate = require("../actions/status_update.coffee")

module.exports = Reflux.createStore({

  init: ->
    @listenTo(statusUpdate, @output)

  output: (flag) ->

    status = if flag then "ONLINE" else "OFFLINE"
    @trigger(status)
})