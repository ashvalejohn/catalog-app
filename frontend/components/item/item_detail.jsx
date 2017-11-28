import React, { Component } from 'react';

import { Link } from 'react-router-dom';

class ItemDetail extends Component {
  constructor(props) {
    super(props);
    this.state = {
      user_id: null,
      item_id: null,
      size: '',
      quantity: 1,
    };

    this.props.fetchItem(this.props.match.params.id);
    this.addToCart = this.addToCart.bind(this);
    this.clickAway = this.clickAway.bind(this);
    this.handleChange = this.handleChange.bind(this);
  }

  componentWillReceiveProps(nextProps) {
    if (this.props.location !== nextProps.location) {
      this.props.fetchItem(nextProps.match.params.id);
    }
  }

  componentWillUnmount() {
    this.props.clearItem();
  }

  clickAway() {
    this.props.history.push('/');
  }

  handleChange(e) {
    this.setState({
      size: e.target.value,
    });
  }

  addToCart(e) {
    e.preventDefault;
    this.setState({
      item_id: this.props.item.id,
      user_id: this.props.user_id,
    }, () => {
      this.props.addItemToCart(this.state);
    });
  }

  render() {
    if (this.props.item === null || Object.keys(this.props.item).length === 0) {
      return (
        <h1 />
      );
    }

    const item = this.props.item;

    return (
      <div className="item-detail-panel">
        <div className="item-detail-info">
          <h1 className="item-title">{item.description}</h1>
          <div className="item-img-container">
            <img className="item-img" src={item.item_image_url} alt="" />
          </div>
          <h2 className="item-price">{item.price}</h2>
          <form className="item-sizes">
            {
              item.sizes.map(size => (
                <label key={`${item.id}${size}`}>
                  <input checked={this.state.size === size} onChange={this.handleChange} type="radio" value={size} name="item-size" />
                  <span className="size-text">{size}</span>
                </label>
              ))
            }
          </form>
          <button className="add-to-cart" onClick={this.addToCart}>Add to Cart</button>
        </div>
        <div className="item-detail-overlay" onClick={this.clickAway} />
      </div>
    );
  }
}

export default ItemDetail;
