import 'package:first/app/features/restaurant/components/dummy/menu_group/menu_group_list_view_widget.dart';
import 'package:first/app/features/restaurant/domain/dummy/dummy_domain.dart';
import 'package:first/app/store/AppStore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class MenuGroupPage extends StatelessWidget {
  const MenuGroupPage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dummyRestaurant.name),
      ),
      body: StoreConnector<AppState, bool>(
          converter: (store) => store.state.isLoading,
          builder: (context, isLoading) {
            return isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Column(
                    // children: [MyAggregatorWidget(), MenuGroupListView()],
                    children: [
                      // CoreListViewWidget(
                      //   listString: dummyListString,
                      // ),
                      MenuGroupWidget(
                        menuGroup: dummyListMenuGroup[0],
                      ),
                    ],
                  );
          }),
    );
  }
}
