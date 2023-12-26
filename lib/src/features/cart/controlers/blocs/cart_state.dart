part of 'cart_bloc.dart';

abstract class CartState extends Equatable {
  CartState();
  @override
  List<Object> get props => [];

  get cart => null;
}

class CartLoading extends CartState {
  CartLoading();

  @override
  List<Object> get props => [];
}

class CartLoaded extends CartState {
 
  final Cart cart;

  CartLoaded(this.cart);
  @override
  List<Object> get props => [cart];
}

class CartError extends CartState {
  CartError();

  @override
  List<Object> get props => [];
}

// abstract class CartState extends Equatable {
//   CartState(this.cartItems);
//   final List<Product> cartItems;
//   @override
//   List<Object> get props => [];
// }

// class CartLoading extends CartState {
//   CartLoading(super.cartItems);

//   @override
//   List<Object> get props => [];
// }

// class CartLoaded extends CartState {
//   List<Product> cartItems;
//   // CartLoaded(this.cartItems) : super(cartItems);
//   // @override
//   // // Cart cart = Cart(products:const );
//   // List<Object> get props => [cartItems];

//   Cart cart;
//   CartLoaded(this.cart) : super(cartItems);
//   @override
//   List<Object> get props => [cart];
// }

// class CartError extends CartState {
//   CartError(super.cartItems);

//   @override
//   List<Object> get props => [];
// }
