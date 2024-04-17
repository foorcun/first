import 'package:first/app/features/restaurant/domain/CartItem.dart';
import 'package:first/app/features/restaurant/domain/MenuItem.dart';
import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:first/app/features/restaurant/domain/MenuItem.dart';
import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';

// Restaurant

Restaurant dummyRestaurant = Restaurant(
  name: 'Kedi Cafe',
);

// MenuGroups//
List<MenuGroup> dummyListMenuGroup = [
  MenuGroup(
    menuGroupId: '1',
    menuSubGroups: [
      MenuSubGroup(
        menuSubGroupId: '1',
        menuSubGroupName: 'Pizzalar',
        menuItems: [
          MenuItem(
            menuItemId: '1',
            menuItemName: 'Nasi Goreng',
          ),
          MenuItem(
            menuItemId: '2',
            menuItemName: 'Mie Goreng',
          ),
          MenuItem(
            menuItemId: '3',
            menuItemName: 'Ayam Goreng',
          ),
        ],
      ),
      MenuSubGroup(
        menuSubGroupId: '2',
        menuSubGroupName: 'Tostlar',
        menuItems: [
          MenuItem(
            menuItemId: '4',
            menuItemName: 'Es Teh',
          ),
          MenuItem(
            menuItemId: '5',
            menuItemName: 'Es Jeruk',
          ),
          MenuItem(
            menuItemId: '6',
            menuItemName: 'Es Campur',
          ),
        ],
      ),
    ],
  ),
  MenuGroup(
    menuGroupId: '2',
    menuSubGroups: [
      MenuSubGroup(
        menuSubGroupId: '3',
        menuSubGroupName: 'Pizzalar',
        menuItems: [
          MenuItem(
            menuItemId: '7',
            menuItemName: 'Nasi Uduk',
          ),
          MenuItem(
            menuItemId: '8',
            menuItemName: 'Mie Rebus',
          ),
          MenuItem(
            menuItemId: '9',
            menuItemName: 'Ayam Bakar',
          ),
        ],
      ),
      MenuSubGroup(
        menuSubGroupId: '4',
        menuSubGroupName: 'Tostlar',
        menuItems: [
          MenuItem(
            menuItemId: '10',
            menuItemName: 'Es Teh',
          ),
          MenuItem(
            menuItemId: '11',
            menuItemName: 'Es Jeruk',
          ),
          MenuItem(
            menuItemId: '12',
            menuItemName: 'Es Campur',
          ),
        ],
      ),
    ],
  ),
];

MenuItem dummyMenu = MenuItem(
  menuItemId: '123',
  menuItemName: 'Nurkan ciger',
);

List<CartItem> dummyCart = [
  CartItem(
      menuItem: MenuItem(
        menuItemId: '123',
        menuItemName: 'Nurkan ciger menu',
      ),
      amount: 2),
  CartItem(
      menuItem: MenuItem(
        menuItemId: '12',
        menuItemName: 'Es Campur menu',
      ),
      amount: 1)
];
