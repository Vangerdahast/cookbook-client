React = require('react');
RecipeForm = require("./recipe_form.coffee");
Reflux = require('reflux')

statusUpdate = require("./actions/status_update.coffee")
statusStore = require("./store/status_store.coffee")


module.exports = React.createClass
  mixins: [Reflux.ListenerMixin]

  getInitialState: ->
    {status: true}

  componentDidMount: ->
    @listenTo(statusStore, @onStatusChange)

  onStatusChange: (status) ->
    console.log status

  invokeStatusUpdate: ->
    statusUpdate(@state.status)
    @setState({status: !@state.status})

  render: ->
    `<div key="newRecipe" onClick={this.invokeStatusUpdate}>
      <h1>Create new recipe</h1>
      <RecipeForm key="form"></RecipeForm>
    </div>`
