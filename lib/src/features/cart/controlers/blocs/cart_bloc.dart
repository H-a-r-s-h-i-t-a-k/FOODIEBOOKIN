import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/screen/Product/model/productmodel.dart';
import '../../model/cart_m.dart';
import 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartLoaded> {
  CartBloc() : super(CartLoaded(Cart(products: []))) {
    on<CartEvent>(_mapCartProductAddedToState);
  }
  Future<void> _mapCartProductAddedToState(
      CartEvent event, Emitter<CartLoaded> emit) async {
    if (event is CartProductAdded) {
      emit(
        CartLoaded(
          Cart(
            products: List.from(state.cart.products)..add(event.product),
          ),
        ),
      );
    } else if (event is CartProductRemoved) {
      emit(CartLoaded(Cart(
          products: List.from(state.cart.products)..remove(event.product))));
    }
  }
}














  // Stream<CartState> mapEventToState(
  //   CartEvent event,
  // ) async* {
  //   if (event is CartStarted) {
  //     yield* _mapCartStartedToState();
  //   } else if (event is CartProductAdded) {
  //     yield* _mapCartProductAddedToState(event, state);
  //   } else if (event is CartProductRemoved) {
  //     yield* _mapCartProductRemovedToState(event, state);
  //   }
  // }

  // Stream<CartState> _mapCartStartedToState() async* {
  //   yield CartLoading();
  //   try {
  //     await Future<void>.delayed(Duration(milliseconds: 300));
  //     yield CartLoaded;
  //   } catch (_) {}
  // }


//   Stream<CartState> _mapCartProductAddedToState(
//     CartProductAdded event,
//     CartState state,
//   ) async* {
//     if (state is CartLoaded) {
//       try {
//         await Future<void>.delayed(Duration(milliseconds: 300));
//         yield CartLoaded(
//           Cart(
//             products: List.from(state.cart.products)..add(event.product),
//           ),
//         );
//       } catch (_) {}
//     }
//   }

//   Stream<CartState> _mapCartProductRemovedToState(
//     CartProductRemoved event,
//     CartState state,
//   ) async* {
//     if (state is CartLoaded) {
//       try {
//         await Future<void>.delayed(Duration(milliseconds: 300));
//         yield CartLoaded(
//           Cart(
//             products: List.from(state.cart.products)..remove(event.product),
//           ),
//         );
//       } catch (_) {}
//     }
