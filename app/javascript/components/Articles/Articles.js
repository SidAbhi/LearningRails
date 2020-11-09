import React, {useState, useEffect} from 'react';
import axios from 'axios';
import ArticlePreview from './ArticlePreview'

const Articles = () => {

  const [articles, setArticles] = useState([]);

  useEffect(()=>{
    axios.get('api/v1/articles.json')
    .then( resp => {
     setArticles(resp.data.data);
     console.log(articles)
    })
    .catch( resp => console.log(resp))
  }, [articles.length])

  const list = articles.map( item => {
    return(
      <ArticlePreview key={item.attributes.slug} attributes={item.attributes}/>
    )
  })

  return (
    <div className="main">
      <div className="article-lists">
        {list}
      </div>
    </div>
  )
};

export default Articles;