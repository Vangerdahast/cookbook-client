var React = require('react');
var Router = require('react-router');
var Link = Router.Link;
var RouteHandler = Router.RouteHandler;

module.exports = React.createClass({
    render: function() {
        return(
            <div>
                <header>
                    <ul>
                        <li>
                            <Link to="app"> Home </Link>
                        </li>
                        <li>
                            <Link to="recipes"> Recipe </Link>
                        </li>
                    </ul>
                </header>
                <RouteHandler/>
            </div>
        )
    }
});