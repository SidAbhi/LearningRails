import React, {useState, useEffect} from 'react';
import axios from 'axios';
import ArticlePreview from './ArticlePreview'
import SideHighlights from './SideHighlights'

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

  const list = articles.map(item => {
    return(
      <ArticlePreview key={item.attributes.slug} attributes={item.attributes}/>
    )
  })

  const side = articles.map(item => {
    console.log(item.attributes)
    return(
      <SideHighlights key={`${item.attributes.slug}-side`} attribute={item.attributes}/>
    )
  })

  return (
    <div className="main">
      <div className="article-lists">
        {list}
        <div className="side-preview">
          {side}
        </div>
      </div>
    </div>
  )
};

export default Articles;