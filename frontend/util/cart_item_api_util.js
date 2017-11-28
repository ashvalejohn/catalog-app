export const getCartItems = () => (
  $.ajax({
    type: 'GET',
    url: '/api/cart_items',
  })
);

export const addCartItem = cartItem => (
  $.ajax({
    type: 'POST',
    url: '/api/cart_items',
    data: { cartItem },
  })
);
