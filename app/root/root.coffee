React = require('react');

h1 = React.DOM.h1


module.exports = React.createClass
  render: ->
    h1 null, 'Hello World'
