import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import { fetchItem, clearItemInfo } from '../../actions/item_actions';
import { addItemToCart } from '../../actions/cart_item_actions';
import ItemDetail from './item_detail';

const mapStateToProps = state => ({
  item: state.entities.item,
  user_id: state.session.currentUser.id,
});

const mapDispatchToProps = dispatch => ({
  fetchItem: id => dispatch(fetchItem(id)),
  clearItem: () => dispatch(clearItemInfo()),
  addItemToCart: item => dispatch(addItemToCart(item)),
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ItemDetail));
