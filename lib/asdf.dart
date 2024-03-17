// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'package:redux/redux.dart';
// import 'package:flutter_redux/flutter_redux.dart';





// // Define state
// class AppState {
//   final dynamic initialState;

//   AppState(this.initialState);
// }

// // Define reducer
// AppState appReducer(AppState state, dynamic action) {
//   if (action is SetInitialStateAction) {
//     return AppState(action.result);
//   }
//   return state;
// }

// void main() {
//   final store = Store<AppState>(
//     appReducer,
//     initialState: AppState(null),
//   );
// // 
//   // Dispatch the async action for fetching initial state
//   fetchInitialState(store);

//   runApp(MyApp(store: store));
// }
