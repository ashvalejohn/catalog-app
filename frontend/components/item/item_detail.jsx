import React, { Component } from 'react';
import { Link } from 'react-router-dom';

class ItemDetail extends Component {
  constructor(props) {
    super(props);
    this.props.fetchItem(this.props.match.params.id);
    this.clickAway = this.clickAway.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.location !== nextProps.location) {
      this.props.fetchItem(nextProps.match.params.id);
    }
  }

  clickAway() {
    this.props.history.push('/');
  }

  render() {
    if (Object.keys(this.props.item).length === 0) {
      return (
        <h1></h1>
      );
    }

    const item = this.props.item; 

    return (
      <div>
        <div className="item-detail">
          <h1 className="item-title">{item.description}</h1>
          <img className="item-img" src={item.item_image_url} alt="" />
          <h2 className="item-price">${item.price}</h2>
          <form className="item-sizes">
            {
              item.sizes.map(size => (
                <label>
                  <input type="radio" value={size} name="item-size"/>
                  <span className="size-text">{size}</span>
                </label>
              ))
            }
          </form>
          <Link to="/cart">
            <button className="add-to-cart">Add to Cart</button>
          </Link>
        </div>
        <div className="item-detail__overlay" onClick={this.clickAway}></div>
      </div>
    );
  }
}

export default ItemDetail;
