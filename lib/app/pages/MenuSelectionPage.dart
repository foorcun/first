import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/domain/MenuItem.dart';
import 'package:first/app/features/restaurant/domain/dummy/dummy_domain.dart';
import 'package:flutter/material.dart';

class MenuSelectionPage extends StatelessWidget {
  const MenuSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Menu Selection Page"),
      // ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            child: MenuSelectionWidget(menuItem: dummyMenu),
          ),
          Expanded(
            flex: 1,
            child: FooterWidget(
              counter: 1,
              onIncrement: () {},
              onButton1Pressed: () {},
              onButton2Pressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class MenuSelectionWidget extends StatelessWidget {
  const MenuSelectionWidget({
    super.key,
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return Text(
      menuItem.menuItemName!,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}

class FooterWidget extends StatelessWidget {
  final int counter;
  final VoidCallback onIncrement;
  final VoidCallback onButton1Pressed;
  final VoidCallback onButton2Pressed;

  FooterWidget({
    required this.counter,
    required this.onIncrement,
    required this.onButton1Pressed,
    required this.onButton2Pressed,
  });

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
                  onPressed: onButton1Pressed,
                  child:  Icon(Icons.remove),
                ),
                // SizedBox(width: 8.0),
                Text(
                  '$counter',
                  style: TextStyle(fontSize: 16.0),
                ),
                // SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: onButton2Pressed,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
            flex:2,
            child: ElevatedButton(
              onPressed: onIncrement,
              child: Text('Add to Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
