import 'package:first/app/features/restaurant/components/dummy/my_aggregator_widget.dart';
import 'package:first/app/features/restaurant/components/menu_group/MenuGroupListView.dart';
import 'package:first/app/features/restaurant/domain/MenuGroup.dart';
import 'package:first/app/features/restaurant/domain/Restaurant.dart';
import 'package:first/app/features/restaurant/services/MenuGroupsService.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MenuGroupPage extends StatelessWidget {
  const MenuGroupPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StoreConnector<AppState, bool>(
          converter: (store) => store.state.isLoading,
          builder: (context, isLoading) {
            return isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    children: [MyAggregatorWidget(), MenuGroupListView()],
                  );
          }),
    );
  }
}
