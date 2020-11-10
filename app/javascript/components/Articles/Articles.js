import React, {useState, useEffect} from 'react';
import axios from 'axios';
import ArticlePreview from './ArticlePreview';
import SideHighlights from './SideHighlights';
import MainArticle from './MainArticle';

const Articles = () => {
  const [articles, setArticles] = useState([]);
  const [main, setMain] = useState([]);
  const [showArticles, setShowArticles] = useState([]);

  useEffect(()=>{
    axios.get('api/v1/articles.json')
    .then( resp => {
     setArticles(resp.data.data);
     console.log(articles);
     let i = articles.findIndex(element => element.attributes.main_highlight === true);
     setMain(articles.slice(i, i+1));
     setShowArticles(articles.filter(element => element.attributes.main_highlight !== true));
    })
    .catch( resp => console.log(resp))
    }, [articles.length])

  const list = showArticles.map(item => {
    return(
      <ArticlePreview key={item.attributes.slug} attributes={item.attributes}/>
    )
  });

  const side = showArticles.map(item => {
    return(
      <SideHighlights key={`${item.attributes.slug}-side`} attributes={item.attributes}/>
    )
  });

  const mainShow = main.map(item => {
    return(
      <MainArticle key={`${item.attributes.slug}-side`} attributes={item.attributes}/>
    )
  });
  
  return (
    <div className="main">
      {mainShow}
      <div className="article-grid-container">
        <div className="article-lists">
          <div className="main-content">
            {list}
          </div>
          <div className="side-preview">
            {side}
          </div>
        </div>
      </div>
    </div>
  )
};

export default Articles;