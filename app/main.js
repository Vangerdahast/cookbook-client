var React = require('react');
var Router = require('react-router');
var Route = Router.Route;
var DefaultRoute = Router.DefaultRoute;


var App = require('./app.jsx');
var Root = require('./root/root.coffee');

var Recipes = require('./recipes/main.coffee');
var Index = require('./recipes/index/index.jsx');
var NewRecipe = require('./recipes/new/new.jsx');


var routes = (
    <Route name="app" path="/" handler={App}>
        <Route name="recipes" handler={Recipes}>
            <Route name="new" handler={NewRecipe}/>
            <DefaultRoute handler={Index}/>
        </Route>
        <DefaultRoute handler={Root}/>
    </Route>
);

Router.run(routes, function (Handler) {
    React.render(<Handler/>, document.body);
});
