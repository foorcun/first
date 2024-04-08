


import 'package:first/app/features/restaurant/domain/Menu.dart';
import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:first/app/features/restaurant/domain/MenuSubGroup.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';


// Restaurant

Restaurant dummyRestaurant = Restaurant(
  name: 'Kedi Cafe',
  cuisine: 'Jl. Raya Kuta No. 1',
  menuGroupId: '08123456789',
);

// MenuGroups//
List<MenuGroup> dummyListMenuGroup = [
  MenuGroup(
    menuGroupId: '1',
    menuSubGroups: [
      MenuSubGroup(
        menuSubGroupId: '1',
        menuSubGroupName: 'Pizzalar',
        menuler: [
          Menu(
            menuId: '1',
            menuAdi: 'Nasi Goreng',
          ),
          Menu(
            menuId: '2',
            menuAdi: 'Mie Goreng',
          ),
          Menu(
            menuId: '3',
            menuAdi: 'Ayam Goreng',
          ),
        ],
      ),
      MenuSubGroup(
        menuSubGroupId: '2',
        menuSubGroupName: 'Tostlar',
        menuler: [
          Menu(
            menuId: '4',
            menuAdi: 'Es Teh',
          ),
          Menu(
            menuId: '5',
            menuAdi: 'Es Jeruk',
          ),
          Menu(
            menuId: '6',
            menuAdi: 'Es Campur',
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
        menuler: [
          Menu(
            menuId: '7',
            menuAdi: 'Nasi Uduk',
          ),
          Menu(
            menuId: '8',
            menuAdi: 'Mie Rebus',
          ),
          Menu(
            menuId: '9',
            menuAdi: 'Ayam Bakar',
          ),
        ],
      ),
      MenuSubGroup(
        menuSubGroupId: '4',
        menuSubGroupName: 'Tostlar',
        menuler: [
          Menu(
            menuId: '10',
            menuAdi: 'Es Teh',
          ),
          Menu(
            menuId: '11',
            menuAdi: 'Es Jeruk',
          ),
          Menu(
            menuId: '12',
            menuAdi: 'Es Campur',
          ),
        ],
      ),
    ],
  ),
];



Menu dummyMenu =  Menu(
            menuId: '123',
            menuAdi: 'Nurkan ciger',
          );