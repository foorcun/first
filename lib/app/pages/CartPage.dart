
import 'package:first/app/features/restaurant/domain/CartItem.dart';
import 'package:first/app/features/restaurant/domain/dummy/dummy_domain.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Cart Page"),
      // ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: CartItemListViewWidget(cart: dummyCart,),
          ),
          Expanded(child: CartPageFooterWidget())
        ],
      ),
    );
  }
}



class CartItemListViewWidget extends StatelessWidget{

  List<CartItem> cart;
  
  CartItemListViewWidget({required this.cart});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cart.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(cart[index].menuItem.menuItemName!),
          subtitle: Text(cart[index].amount.toString()),
        );
      });
  }
}


class CartPageFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: ElevatedButton(
        onPressed: (){},
        child: Text("Siparişi Tamamla"),
      )
    );
  }
}