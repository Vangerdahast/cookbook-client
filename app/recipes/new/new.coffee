React = require('react')
RecipeForm = require("./recipe_form.coffee")

{div, h1, form, input, label} = React.DOM

module.exports = React.createClass
  render: ->
    div
      key: 'newRecipe'
      [
        h1 key: 'title', "Create new recipe"
        React.createFactory(RecipeForm)({key: 'form'})
      ]
