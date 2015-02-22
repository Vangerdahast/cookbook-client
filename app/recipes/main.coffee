React = require('react')
Router = require('react-router')
Link = Router.Link
RouteHandler = Router.RouteHandler

mui = require('material-ui')



FlatButton = mui.FlatButton
{div, header, ul, li} = React.DOM

module.exports = React.createClass

  active: (path) ->
    location.hash.substring(2) == path


  render: ->
    div
      className: 'asd'
      [
        header key: 'header'
        ul
          key: 'navigation'
          className: 'nav-pills'
          [
            li key: 'index', React.createFactory(Link) {to: "recipes"}, React.createFactory(FlatButton)({label:"All Recipes", secondary: true, primary: @active("recipes")})
            li key: 'new', React.createFactory(Link) {to: "new"}, React.createFactory(FlatButton)({label:"New Recipe", secondary: true, primary: @active("recipes/new")})
            div {key: 'clearfix', className: 'clearfix'}
          ]
        React.createFactory(RouteHandler)({key: 'routeHandler'})
      ]