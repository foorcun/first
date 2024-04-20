import 'package:first/app/features/restaurant/domain/CartItem.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/candidate_cart_item_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class MenuSelectionPage extends StatelessWidget {
  const MenuSelectionPage({super.key});

  // final MenuItem? selectedMenuItem;

  @override
  Widget build(BuildContext context) {
    // final MenuItem selectedMenuItem =
    //     ModalRoute.of(context)!.settings.arguments as MenuItem;
    

    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Selection Page"),
      ),
      body: StoreConnector<AppState, CartItem?>(
        converter: (store) => store.state.candidateCartItem,
        builder: (context, candidateCartItem) {
          return Column(
            children: [
              Expanded(
                flex: 9,
                // child: MenuSelectionWidget(menuItem: dummyMenu),
                child: candidateCartItem == null ? Text("candi null") :  MenuSelectionWidget(candidateCartItem: candidateCartItem),
                // child: selectedMenuItem != null ? MenuSelectionWidget(menuItem: selectedMenuItem!): Text('No menu item selected'),
              ),
              Expanded(
                flex: 1,
                child: candidateCartItem == null ? Text("bu null") : FooterWidget(context: context, candidateCartItem: candidateCartItem,),
              ),
            ],
          );
        }
      ),
    );
  }
}

class MenuSelectionWidget extends StatelessWidget {
  const MenuSelectionWidget({
    super.key,
    required this.candidateCartItem,
  });

  final CartItem candidateCartItem;

  @override
  Widget build(BuildContext context) {
    print("3####");
    print(candidateCartItem);
    // return Text(candidateCartItem!.quantity.toString());
    return Text(
      candidateCartItem.menuItem.menuItemName!,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class FooterWidget extends StatelessWidget {
  final CartItem candidateCartItem;
  final BuildContext context;

  FooterWidget({
    required this.context,
    required this.candidateCartItem,
  });

  void _onIncrement() {
    print('Increment');
    StoreProvider.of<AppState>(context).dispatch(CandidateCartItemQuantityInrementAction(candidateCartItem));
  }
  void _onDecrement() {
    print('_onDecrement');
    StoreProvider.of<AppState>(context).dispatch(CandidateCartItemQuantityDecrementAction(candidateCartItem));
  }
  void _onAddToCart() {
    print('_onAddToCart');
    StoreProvider.of<AppState>(context).dispatch(CandidateCartItemAddAction(candidateCartItem));
    Navigator.pushNamed(context, "/menuGroupPage");

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: (){
                    _onDecrement();
                  },
                  child:  Icon(Icons.remove),
                ),
                // SizedBox(width: 8.0),
                Text(
                  candidateCartItem.quantity.toString(),
                  style: TextStyle(fontSize: 16.0),
                ),
                // SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: (){
                    _onIncrement();
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
            flex:2,
            child: ElevatedButton(
              onPressed: (){
                _onAddToCart();
              },
              child: Text('Add to Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
