import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/domain/MenuItem.dart';
import 'package:first/app/features/restaurant/domain/dummy/dummy_domain.dart';
import 'package:flutter/material.dart';

class MenuSelectionPage extends StatelessWidget {
  const MenuSelectionPage({super.key});

  // final MenuItem? selectedMenuItem;

  @override
  Widget build(BuildContext context) {
    final MenuItem selectedMenuItem =
        ModalRoute.of(context)!.settings.arguments as MenuItem;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu Selection Page"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 9,
            // child: MenuSelectionWidget(menuItem: dummyMenu),
            child: MenuSelectionWidget(menuItem: selectedMenuItem),
            // child: selectedMenuItem != null ? MenuSelectionWidget(menuItem: selectedMenuItem!): Text('No menu item selected'),
          ),
          Expanded(
            flex: 1,
            child: FooterWidget(
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

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidget();
}

class _FooterWidget extends State<FooterWidget> {
  int counter = 1;

  _onDecreament() {
    setState(() {
      if (counter > 1) {
        counter--;
      }
    });
  }

    _onIncrement() {
    setState(() {
        counter++;
    });
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
                  onPressed: _onDecreament,
                  child: Icon(Icons.remove),
                ),
                // SizedBox(width: 8.0),
                Text(
                  '$counter',
                  style: TextStyle(fontSize: 16.0),
                ),
                // SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: _onIncrement,
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ElevatedButton(
              // onPressed: onIncrement,
              onPressed: null,
              // onPressed: () => counter + 1,
              child: Text('Add to Cart'),
            ),
          ),
        ],
      ),
    );
  }
}
