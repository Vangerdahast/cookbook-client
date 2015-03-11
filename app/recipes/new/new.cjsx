React = require('react');
RecipeForm = require("./recipe_form.coffee");


module.exports = React.createClass
  render: ->
    `<div key="newRecipe">
      <h1>Create new recipe</h1>
      <RecipeForm key="form"></RecipeForm>
    </div>`
