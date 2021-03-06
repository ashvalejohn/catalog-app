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

export const removeCartItem = id => (
  $.ajax({
    type: 'DELETE',
    url: `/api/cart_items/${id}`,
  })
);

export const updateCartItem = (cartItem) => {
  return $.ajax({
    type: 'PATCH',
    url: `/api/cart_items/${cartItem.id}`,
    data: { cartItem },
  });
};
