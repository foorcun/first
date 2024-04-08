import 'package:first/app/pages/Routes.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:first/app/store/actions/FetchRestaurantsInitialStateAction.dart';
import 'package:first/app/store/reducers/AppReducer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() async {
  final store = Store<AppState>(appReducer, initialState: initialState);

  FetchRestaurantsInitialStateAction.fetchInitialState(store);

  runApp( MyApp(
    store: store,
  ));
}

class MyApp extends StatelessWidget {
  final Store<AppState> store;

  MyApp({
  Key? key,
    required this.store,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: routes,
        // initialRoute: '/',
        initialRoute: '/cartPage',
        // home: const HomePage(),
        // home: const MenuGroupPage(),
      ),
    );
  }
}
