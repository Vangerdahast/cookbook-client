React = require('react');
Router = require('react-router');
Link = Router.Link;
RouteHandler = Router.RouteHandler;


{div, header, ul, li} = React.DOM

module.exports = React.createClass
  render: ->
    div
      className: 'asd'
      header
      ul
      [
        li key: 'index', React.createFactory(Link) to: "recipes", "All recipes"
        li key: 'new', React.createFactory(Link) to: "new", "New"
      ]
      React.createFactory(RouteHandler)()