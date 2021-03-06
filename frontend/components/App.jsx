import React from 'react';
import { Route } from 'react-router-dom';
import { ProtectedRoute, AuthRoute } from '../util/route_util';
import CartContainer from './cart/cart_container';
import HeaderContainer from './header_container';
import LoginContainer from './session/login_container';
import ImageIndexContainer from './images/image_index_container';
import ItemDetailContainer from './item/item_detail_container';
import SignupContainer from './session/signup_container';
import Checkout from './cart/cart_checkout';


const App = () => (
  <div>
    <Route path="/items/:id" component={ItemDetailContainer} />
    <ProtectedRoute path="/cart" component={CartContainer} />
    <Route path="/cart/checkout" component={Checkout} />
    <Route path="/" component={HeaderContainer} />
    <Route path="/" component={ImageIndexContainer} />
    <AuthRoute path="/login" component={LoginContainer} />
    <AuthRoute path="/signup" component={SignupContainer} />
  </div>
);


export default App;
