import React from "react";
import {ParallaxBanner} from 'react-scroll-parallax'
import {BrowserRouter as Router, Link} from 'react-router-dom'
import ParallaxCache from '../ParallaxCache'

const ArticlePreview = (props) => {
  return (
    <div className="card">
      <ParallaxCache />
      <ParallaxBanner
        className="article-image"
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
            amount: 0.2,
          },
        ]}
        style={{
          height: "70vh",
          width: "90%",
          backgroundColor: "#192e42",
          marginBottom: "5%",
          borderRadius: "14px"
        }}
      >
        <div className ="article-title">{props.attributes.title}</div>
        <div className ="article-body"></div>
        <div className ="article-score"></div>
      </ParallaxBanner>
    </div>
  );
};

export default ArticlePreview;