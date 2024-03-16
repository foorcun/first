import 'package:first/app/pages/HomePage.dart';
import 'package:first/app/pages/MenuGroupPage.dart';
import 'package:flutter/material.dart';

// Define your routes as a Map<String, WidgetBuilder>
Map<String, WidgetBuilder> routes = {
  '/': (context) => HomePage(),
  '/homePage': (context) => HomePage(),
  '/menuGroupPage': (context) => MenuGroupPage(),
};

