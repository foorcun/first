import 'package:first/app/features/restaurant/domain/CartItem.dart';

class CandidateCartItemAction {
  final CartItem cartItem;

  CandidateCartItemAction(this.cartItem);
}


class CandidateCartItemQuantityInrementAction {
  final CartItem cartItem;

  CandidateCartItemQuantityInrementAction(this.cartItem);
}

class CandidateCartItemQuantityDecrementAction {
  final CartItem cartItem;

  CandidateCartItemQuantityDecrementAction(this.cartItem);
}


class CandidateCartItemAddAction {
  final CartItem cartItem;

  CandidateCartItemAddAction(this.cartItem);
}