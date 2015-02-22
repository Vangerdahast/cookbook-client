
React = require("react")
mui = require('material-ui')
_ = require('lodash')

{Input, TextField, FloatingActionButton} = mui
{form, div}= React.DOM

Ingredients = React.createClass
  getInitialState: ->
    {numberOfIngredients: 3}

  addIngredient: (e) ->
    e.preventDefault()
    @setState {numberOfIngredients: @state.numberOfIngredients + 1}

  render: ->
    div
      className: 'ingredients-section'
      [
        _.times @state.numberOfIngredients, (i) ->
          div
            className: 'ingredient-group'
            key: "group_#{i}"
            [
              React.createFactory(TextField)(className: 'ingredient', key: "ingredient_#{i}", name: "dish[ingredients][#{i}]", floatingLabelText: 'Ingredient')
              React.createFactory(TextField)(className: 'ingredient', key: "quantity_#{i}", name: "dish[quantities][#{i}]", floatingLabelText: 'Quantity')
            ]
        React.createFactory(FloatingActionButton)({key: 'addIngredient', secondary: true, onClick: @addIngredient}, "Add")
      ]

Preparation = React.createClass
  render: ->
    div
      className: 'preparation-section'
      [
        React.createFactory(Input)(multiline: true, rows: 5, className: 'preparation-description', key: 'preparation-description', name: 'dish[preparation]', placeholder: 'Preparation')
      ]

module.exports = React.createClass

  render: ->
    form
      className: 'recipe-form'
      [
        React.createFactory(TextField) key: 'dishName', floatingLabelText: 'Dish name', name:'dish[name]'
        React.createFactory(Ingredients) key: 'ingredients'
        React.createFactory(Preparation) key: 'preparation'
      ]
