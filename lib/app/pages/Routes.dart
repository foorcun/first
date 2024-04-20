import 'package:first/app/features/restaurant/components/menuler/MenulerListViewPage.dart';
import 'package:first/app/pages/CartPage.dart';
import 'package:first/app/pages/HomePage.dart';
import 'package:first/app/pages/MenuGroupPage.dart';
import 'package:first/app/pages/MenuSelectionPage.dart';
import 'package:flutter/material.dart';

// Define your routes as a Map<String, WidgetBuilder>
Map<String, WidgetBuilder> routes = {
  '/': (context) => HomePage(),
  '/homePage': (context) => HomePage(),
  '/menuGroupPage': (context) => MenuGroupPage(),
  // '/menuGroupsPage': (context) => MenuGroupsPage(),
  // '/menuler': (context) => MenulerListViewPage(),
  '/menuSelectionPage': (context) => MenuSelectionPage(),
  '/cartPage':(context) => CartPage()
};

