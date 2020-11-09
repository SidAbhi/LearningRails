import React from 'react';
import {Route, Switch} from 'react-router-dom';
import Articles from './Articles/Articles';
import Article from './Article/Article'
import {ParallaxProvider} from 'react-scroll-parallax'

const App = () => {
  return (
    <>
      <header>
        <h1>Writer's blog</h1>
      </header>
      <ParallaxProvider>
        <Switch>
          <Route exact path="/" component={Articles}/>
          <Route exact path="/articles/:slug" component={Article}/>
        </Switch>
      </ParallaxProvider>
    </>
  );
};

export default App;