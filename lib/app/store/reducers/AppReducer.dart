// Update the reducer to handle updating menu groups
import 'package:first/app/features/restaurant/domain/CartItem.dart';
import 'package:first/app/store/actions/SetInitialMenulerStateAction.dart';
import 'package:first/app/store/actions/UpdateMenuGroupsAction.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/LoadingStateAction.dart';
import 'package:first/app/store/actions/SelectRestaurantAction.dart';
import 'package:first/app/store/actions/SetInitialMenuGroupsStateAction.dart';
import 'package:first/app/store/actions/SetInitialStateAction.dart';
import 'package:first/app/store/actions/candidate_cart_item_action.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is SelectRestaurantAction) {
    return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: action
            .restaurant, // appReducer, action icindeki datanin state e gecirilmesini saglamakla gorevli
        menuGroups: state.menuGroups,
        isLoading: false,
        cart: state.cart
        );
  }
  if (action is UpdateMenuGroupsAction) {
    return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: action.menuGroups,
        isLoading: false,
        cart: state.cart
        );
  }
  if (action is SetInitialRestaurantStateAction) {
    return AppState(
        restaurantList: action.listRestaurant,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: action.isLoading,
        cart: state.cart
        );
  }
  if(action is LoadingStateAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: action.isLoading,
        cart: state.cart
        );
  }
    if(action is SetInitialMenuGroupsStateAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: action.menuGroups,
        isLoading: action.isLoading,
        cart: state.cart
        );
  }
    if(action is SetInitialMenulerStateAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: state.isLoading,
        menuler: action.menuler,
        cart: state.cart
        );
    }
    if(action is CandidateCartItemAction){
                        print("CandidateCartItemAction Reducer oncesi");

        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: state.isLoading,
        menuler: state.menuler,
        candidateCartItem: action.cartItem,
        cart: state.cart
        );
    }
        if(action is CandidateCartItemQuantityInrementAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: state.isLoading,
        menuler: state.menuler,
        candidateCartItem: CartItem(menuItem: action.cartItem.menuItem, quantity: action.cartItem.quantity + 1),
        cart: state.cart

        );
    }
    if(action is CandidateCartItemQuantityDecrementAction){
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: state.isLoading,
        menuler: state.menuler,
        candidateCartItem: action.cartItem.quantity != 0 ? CartItem(menuItem: action.cartItem.menuItem, quantity: action.cartItem.quantity - 1) : action.cartItem
        ,
        cart: state.cart
        );
    } 
    if(action is CandidateCartItemAddAction){
      List<CartItem> cartt = state.cart;
      cartt.add(action.cartItem);
        return AppState(
        restaurantList: state.restaurantList,
        selectedRestaurant: state.selectedRestaurant,
        menuGroups: state.menuGroups,
        isLoading: state.isLoading,
        menuler: state.menuler,
        candidateCartItem: action.cartItem,
        cart: cartt
        );
    }
  return state;
}


