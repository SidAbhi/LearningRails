import React from 'react';

const SideHighlights = (props) => {
  return (
    <div>
      <img className="side-image" src={props.img_url_front} />
      {props.title}
    </div>
  );
};

export default SideHighlights;