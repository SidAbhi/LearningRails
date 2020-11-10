import React from "react";
import {ParallaxBanner} from 'react-scroll-parallax'
import {BrowserRouter as Router, Link} from 'react-router-dom'
import ParallaxCache from '../ParallaxCache'

const MainArticle = (props) => {
  const lax = () => props.attributes.img_url_back === null ? Math.random() : 0.2;
  console.log(props.attributes.title)

  return (
    <div className="main-banner">
      <ParallaxCache />
      <ParallaxBanner
        layers={[
          {
            image: props.attributes.img_url_back,
            amount: 0.1,
          },
          {
            image: props.attributes.img_url_middle,
            amount: -0.3,
          },
          {
            image: props.attributes.img_url_front,
            amount: lax(),
          },
        ]}
        style={{
          height: "80vh",
          width: "100%",
          backgroundColor: props.attributes.color,
          marginBottom: "5%",
          display: "grid",
        }}
      >
        <div className ="article-titlecard">
          <div className ="article-title">
            {props.attributes.title}
          </div>
          <div className ="article-score"></div>
        </div>
      </ParallaxBanner>
    </div>
  );
};

export default MainArticle;